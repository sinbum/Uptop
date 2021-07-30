package controller;

import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import service.Service;
import vo.TotalBoardVO;

@Controller
public class MainController {
	
	ModelAndView mv;
	Service service;
	
	public MainController() {
		mv= new ModelAndView();
	}
	
	@RequestMapping("/index")
	public ModelAndView index() {
//		System.out.println("idnex경로들어옴");
		service = new Service();

		List<TotalBoardVO> boardslist =service.getboardslist();
		System.out.println("인덱스컨트롤러에서"+boardslist.get(0).getBoardsvo().getBoards_date());
		mv.addObject("boardslist",boardslist);
		mv.addObject("main","main.jsp");	
		mv.setViewName("/WEB-INF/mainpage.jsp");
		return mv;
	}
	
	@RequestMapping("/login")
	public ModelAndView login() {
		
		mv.addObject("main","/login/login.jsp");	
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
	
	@RequestMapping("/login/login.do")
	public ModelAndView logindo(String id,String password,HttpServletRequest request) {
		
		if(service.logincheck(id,password)==1) {
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
	
	@RequestMapping("/signin")
	public ModelAndView signin() {		
		mv.addObject("main","signin/signin.jsp");	
		mv.setViewName("/WEB-INF/mainpage.jsp");
		return mv;
	}
	
	@RequestMapping("/signin/signin.do")
	public ModelAndView signindo(String id,String password,String email) {
		
		//가입결과 값 반환.
		int result = service.signin(id,password,email);
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
		
		int result = service.makechannel();
		mv.addObject("result",result);
		
		mv.addObject("main","channel/makechanneldo.jsp");
		mv.setViewName("/WEB-INF/mainpage.jsp");
		return mv;
	}
	


}
