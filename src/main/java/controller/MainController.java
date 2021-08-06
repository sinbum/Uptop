package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import paging.Pagination;
import service.BoardServiceImple;
import service.MainServiceImple;
import vo.BoardChannelVO;
import vo.BoardVO;

@Controller
public class MainController {
	
	ModelAndView mv;
	
	@Autowired
	MainServiceImple mainservice;
	
	@Autowired
	@Qualifier("bs")
	BoardServiceImple boardservice;
	
	public MainController() {
		mv= new ModelAndView();
	}
	
	@RequestMapping("/index")
	public ModelAndView index(@RequestParam(defaultValue="1") int requestpagenum) {
		
		// 전체리스트 개수 
        int listCnt = boardservice.getMaxCount();
        
        Pagination pagination = new Pagination(listCnt, requestpagenum);
        // 전체리스트 출력        
        List<BoardVO> list = boardservice.viewAll();        
        mv.addObject("boardslist",list);        
        mv.addObject("pagination", pagination);        
        mv.addObject("section","main/mainsection");
		mv.setViewName("main");
		return mv;
	}
	
	@RequestMapping("/login")
	public ModelAndView login() {
		
		mv.addObject("section","login/login");	
		mv.setViewName("main");
		return mv;
	}
	
	
	@RequestMapping("login.do")
	public ModelAndView logindo(String id,String password,HttpServletRequest request,HttpServletResponse response) {
		if(mainservice.loginCheck(id,password)==1) {
			//로그인성공
			request.getSession().setAttribute("id", id);
			try {
				response.sendRedirect("/index");
				return null;
			} catch (IOException e) {
				e.printStackTrace();
			}			
		}else{
			//로그인실패
			mv.addObject("section","login/login");			
		}
		mv.setViewName("/WEB-INF/mainpage.jsp");
		return mv;
	}
	
	@RequestMapping("/login/logout")
	public String logout(HttpServletRequest request,HttpServletResponse response) {
		request.getSession().setAttribute("id",null);
		try {
			response.sendRedirect("/index");
		} catch (IOException e) {
			e.printStackTrace();
		}			
		return "/index";
	}
	
	
	@RequestMapping("/signin")
	public ModelAndView signin() {		
		mv.addObject("section","signin/signin");
		mv.setViewName("main");
		return mv;
	}
	
	@RequestMapping("/signin/signin.do")
	public ModelAndView signindo(String id,String password,String email) {
		
		//가입결과 값 반환.
		int result = mainservice.signIn(id,password,email);
		mv.addObject("signInResult",result);
		mv.addObject("main","signin/signin.jsp");
		mv.setViewName("/WEB-INF/mainpage.jsp");
		return mv;
	}
	
	
	@RequestMapping("/makeboard")
	public ModelAndView makeboard(HttpServletRequest response) {
		String memberId =(String) response.getSession().getAttribute("id");		
		List <BoardChannelVO> channelList=mainservice.getChannelList(memberId);
		System.out.println(channelList);
		
		mv.addObject("channelList",channelList);
		mv.addObject("section","board/makeboard");
		mv.setViewName("main");
		return mv;
	}
	
	@RequestMapping("makeboard.do")
	public ModelAndView makeBoardDo(
			String board_firstkeyword,
			String board_secondkeyword,
			String board_name,
			String board_content,
			String channel_num,
			HttpServletRequest request
			) {	
		
		String SessionId = (String)request.getSession().getAttribute("id");
		
		int makeboard_result = mainservice.makeBoardDo(
				board_firstkeyword,
				board_secondkeyword,
				board_name, board_content,
				Integer.parseInt(channel_num),
				SessionId
				);
		mv.addObject("mkBoardResult",makeboard_result);
		mv.addObject("main","board/makeboard.jsp");
		mv.setViewName("/WEB-INF/mainpage.jsp");
		return mv;
	}
	
	@RequestMapping("/makechannel")
	public ModelAndView makeChannel() {		
		mv.addObject("section","channel/makechannel");
		mv.setViewName("main");
		return mv;
	}
		
	
	@RequestMapping("/makechannel/makechannel.do")
	public ModelAndView makechanneldo(
			String channel_name,
			String channel_info,
			String channel_category,
			HttpServletRequest request){
		String member_id_fk=(String)request.getSession().getAttribute("id");
		
		System.out.println("채널네임 : "+channel_name);
		int result = mainservice.makeChannel(channel_name, channel_info, channel_category, member_id_fk);
		
		mv.addObject("result",result);
		
		mv.addObject("main","channel/makechanneldo.jsp");
		mv.setViewName("/WEB-INF/mainpage.jsp");
		return mv;
	}
	
	@RequestMapping("/mypage")
	public ModelAndView myPage(HttpServletRequest request) {
		String sessionId=(String)request.getSession().getAttribute("id");
		System.out.println(sessionId);
	
		if(sessionId==null) {
			mv.addObject("section","login/login");						
		}else {
			mv.addObject("sessionid",sessionId);
			mv.addObject("section","mypage/mypage");		
		}				
		mv.setViewName("main");
		return mv;		
	}
	
	
	//비동기를 이용한 정보가져오기. ajax.	
	
//	@RequestMapping("/mypage/profileInfo")
//	public ModelAndView profileInfo(HttpServletRequest request) {
//		String sessionId=(String)request.getSession().getAttribute("id");		
//		
//		//세션아이디가 널이아닐경우 로그인페이지로 이동.
//		if(sessionId!=null) {
//			mv.addObject("memberVO",mainservice.getMemberDetail(sessionId));
//			mv.setViewName("/WEB-INF/view/mypage/profileinfo.jsp");
//		}else{
//			mv.addObject("main","/login/login.jsp");	
//			mv.setViewName("/WEB-INF/mainpage.jsp");
//		}				
//		return mv;		
//	}
//	
//	@RequestMapping("/mypage/channelInfo")
//	public ModelAndView channelInfo(HttpServletRequest request) {
//		String sessionId=(String)request.getSession().getAttribute("id");
//		
//		
//		
//		//세션아이디가 널이아닐경우 로그인페이지로 이동.
//		if(sessionId!=null) {
//			mv.addObject("channelVO",mainservice.getChannelList(sessionId));
//			mv.addObject("sessionid",sessionId);
//			mv.setViewName("/WEB-INF/view/mypage/channelInfo.jsp");
//		}else{
//			mv.addObject("main","/login/login.jsp");	
//			mv.setViewName("/WEB-INF/mainpage.jsp");
//		}				
//		return mv;		
//	}
//	@RequestMapping("/mypage/boardInfo")
//	public ModelAndView noticeInfo(HttpServletRequest request) {
//		String sessionId=(String)request.getSession().getAttribute("id");
//		System.out.println(mainservice.getBoardlist(sessionId));
//		//세션아이디가 널이아닐경우 로그인페이지로 이동.
//		if(sessionId!=null) {
//			
//			mv.addObject("boardVO",mainservice.getBoardlist(sessionId));
//			mv.addObject("sessionid",sessionId);
//			mv.setViewName("/WEB-INF/view/mypage/boardInfo.jsp");
//		}else{
//			mv.addObject("main","/login/login.jsp");	
//			mv.setViewName("/WEB-INF/mainpage.jsp");
//		}					
//		return mv;		
//	}
//	


}
