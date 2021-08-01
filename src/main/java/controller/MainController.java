package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import service.BoardServiceImple;
import service.MainService;
import service.MainServiceImple;
import vo.BoardVO;

@Controller
public class MainController {
	
	ModelAndView mv;
	
	@Autowired
	MainServiceImple mainservice;
	
	@Autowired
	BoardServiceImple boardservice;
	
	public MainController() {
		mv= new ModelAndView();
	}
	
	@RequestMapping("/index")
	public ModelAndView index() {

		List<BoardVO> boardslist =boardservice.selectBoardList(1,10);
		
		mv.addObject("boardslist",boardslist);
		mv.addObject("main","maintest2.jsp");
		mv.setViewName("/WEB-INF/mainpage.jsp");
		return mv;
	}
	
	@RequestMapping("/login")
	public ModelAndView login() {
		
		mv.addObject("main","/login/login.jsp");	
		mv.setViewName("/WEB-INF/mainpage.jsp");
		return mv;
	}
	
	@RequestMapping("/login/login.do")
	public ModelAndView logindo(String id,String password,HttpServletRequest request) {
		if(mainservice.loginCheck(id,password)==1) {
			//로그인성공
			request.getSession().setAttribute("id", id);
			mv.addObject("main","main.jsp");
		}else{
			//로그인실패
			mv.addObject("main","login/login.jsp");	
			mv.addObject("logincheck","fail");
		}
		mv.setViewName("/WEB-INF/mainpage.jsp");
		return mv;
	}
	
	@RequestMapping("/login/logout")
	public ModelAndView logout(HttpServletRequest request) {
		request.getSession().setAttribute("id",null);
		mv.addObject("main","main.jsp");		
		mv.setViewName("/WEB-INF/mainpage.jsp");
		return mv;
	}
	
	
	@RequestMapping("/signin")
	public ModelAndView signin() {		
		mv.addObject("main","signin/signin.jsp");	
		mv.setViewName("/WEB-INF/mainpage.jsp");
		return mv;
	}
	
	@RequestMapping("/signin/signin.do")
	public ModelAndView signindo(String id,String password,String email) {
		
		//가입결과 값 반환.
		int result = mainservice.signIn(id,password,email);
		mv.addObject("result",String.valueOf(result));
		mv.addObject("main","signin/signin.jsp");
		mv.setViewName("/WEB-INF/mainpage.jsp");
		return mv;
	}
	
	
	@RequestMapping("/makeboard")
	public ModelAndView makeboard() {		
		mv.addObject("main","board/makeboard.jsp");
		mv.setViewName("/WEB-INF/mainpage.jsp");
		return mv;
	}
	
	@RequestMapping("/makechannel")
	public ModelAndView makechannel() {		
		mv.addObject("main","channel/makechannel.jsp");
		mv.setViewName("/WEB-INF/mainpage.jsp");
		return mv;
	}
	
	@RequestMapping("/makechannel/makechannel.do")
	public ModelAndView makechanneldo(String channel_name,String channel_info,String channel_category,HttpServletRequest request){
		String sessionId=(String)request.getSession().getAttribute("id");
		
		int result = mainservice.makeChannel();
		mv.addObject("result",result);
		
		mv.addObject("main","channel/makechanneldo.jsp");
		mv.setViewName("/WEB-INF/mainpage.jsp");
		return mv;
	}
	


}
