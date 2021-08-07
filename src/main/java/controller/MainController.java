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
import vo.SelectBoardVO;

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
		//aside display : none > display on;설정이 처음에 드러나게
		mv.addObject("asidestyle","");
	
		
		// 전체리스트 개수 
        int listCnt = boardservice.getMaxCount();
        
        //페이지네이션 계산 처리
        Pagination pagination = new Pagination(listCnt, requestpagenum);
        
        //전체 등록된 게시물 개수
        System.out.println("리스트 개수 :" + listCnt);        
        
        //시작하는 게시글 번호
        System.out.println("시작하는 게시글 번호"+pagination.getStartIndex());
        
       
        //한페이지당 게시글 수
        System.out.println("한페이지당 게시글 수"+pagination.getPageSize());

        
        // 전체리스트 출력        
        //List<BoardVO> list = boardservice.viewAll();
        
        // 페이지네이션한 게시글 출력
//        List<BoardVO> list = boardservice.selectBoardList(pagination.getStartIndex(), pagination.getPageSize());
        List<SelectBoardVO> list = boardservice.selectBoardList(pagination.getStartIndex(), pagination.getPageSize());
        mv.addObject("boardslist",list);
        
        System.out.println(list);
        
        mv.addObject("pagination", pagination);        
        mv.addObject("section","main/mainsection");
		mv.setViewName("main");
		return mv;
	}
	
	@RequestMapping("/login")
	public ModelAndView login() {
		mv.addObject("asidestyle","style=\"display:none;\"");
		
		mv.addObject("section","login/login");	
		mv.setViewName("main");
		return mv;

	}
	
	
	@RequestMapping("/login.do")
	public ModelAndView logindo(String id,String password,HttpServletRequest request,HttpServletResponse response) {
		if(mainservice.loginCheck(id,password)==1) {
			//로그인성공
			request.getSession().setAttribute("id", id);
			mv.addObject("section","main/mainsection");				
		}else{
			//로그인실패
			mv.addObject("section","login/loginfail");			
		}
		mv.setViewName("main");
		return mv;
	}
	
	@RequestMapping("/logout")
	public ModelAndView logout(HttpServletRequest request,HttpServletResponse response) {
		request.getSession().setAttribute("id",null);
		try {
			response.sendRedirect("/index");
		} catch (IOException e) {
			e.printStackTrace();
		}			
		mv.setViewName("main");
		return mv;
	}
	
	
	@RequestMapping("/signin")
	public ModelAndView signin() {	
		mv.addObject("asidestyle","style=\"display:none;\"");
		mv.addObject("section","signin/signin");
		mv.setViewName("main");
		return mv;
	}
	
	@RequestMapping("signin.do")
	public ModelAndView signindo(String id,String password,String email) {
		
		//가입결과 값 반환.
		int result = mainservice.signIn(id,password,email);
		mv.addObject("result",result);
		mv.addObject("section","signin/signresult");
		mv.setViewName("main");
		return mv;
	}
	
	
	@RequestMapping("/makeboard")
	public ModelAndView makeboard(HttpServletRequest response) {
		String memberId =(String) response.getSession().getAttribute("id");		
		List <BoardChannelVO> channelList=mainservice.getChannelList(memberId);
		System.out.println(channelList);
		mv.addObject("asidestyle","style=\"display:none;\"");
		mv.addObject("channelList",channelList);
		System.out.println(channelList.size());
		if(channelList.size()==0) {
			mv.addObject("result",channelList.size());
			mv.addObject("section","board/nochannel");
			mv.setViewName("main");			
			return mv;
		}
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
		
		if (makeboard_result==1) {			
			mv.addObject("section","board/makeboardsucess");
		}else {
			mv.addObject("section","board/makeboardfail");
		}		
		mv.setViewName("main");
		return mv;
	}
	
	@RequestMapping("/makechannel")
	public ModelAndView makeChannel() {		
		mv.addObject("section","channel/makechannel");
		mv.addObject("asidestyle","style=\"display:none;\"");

		mv.setViewName("main");
		return mv;
	}
	
	
	@RequestMapping("makechannel.do")
	public ModelAndView makechanneldo(
			String channel_name,
			String channel_info,
			String channel_category,
			HttpServletRequest request){
		String member_id_fk=(String)request.getSession().getAttribute("id");
		
		//System.out.println("채널네임 : "+channel_name);
		int result = mainservice.makeChannel(channel_name, channel_info, channel_category, member_id_fk);
				
		mv.addObject("result",result);		
		mv.addObject("section","channel/makechannelresult");
		mv.setViewName("main");
		return mv;
	}
	
	@RequestMapping("/mypage")
	public ModelAndView myPage(HttpServletRequest request) {
		mv.addObject("asidestyle","style=\"display:none;\"");

		String sessionId=(String)request.getSession().getAttribute("id");
		//System.out.println(sessionId);
	
		if(sessionId==null) {
			//세션아이디가 없다면 로그인실행.
			mv.addObject("section","login/login");						
		}else {			
			mv.addObject("section","mypage/mypage");
		}
		
		
		//회원 프로필정보 가져오기.
		mv.addObject("memberVO",mainservice.getMemberDetail(sessionId));		
		//회원 채널정보 가져오기.
		mv.addObject("channelVO",mainservice.getChannelList(sessionId));
		//회원 게시물정보 가져오기.
		mv.addObject("boardVO",mainservice.getBoardlist(sessionId));
		
		mv.setViewName("main");		
		return mv;		
	}
	
		
	
	


}
