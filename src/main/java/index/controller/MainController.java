package index.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {
	ModelAndView mv;
	public MainController() {
		mv=new ModelAndView();
		System.out.println("메인컨트롤러 기본생성자함수 실행.");
	}
	
	@RequestMapping("/index")
	public ModelAndView index() {
		System.out.println("/index 경로진입");
	mv.addObject("section","index/section1/defualt.jsp");
	mv.setViewName("index");
		return mv;
	}
	
	@RequestMapping("/board")
	public ModelAndView board() {
		System.out.println("/board 경로진입");
	mv.addObject("section","board/getlist/list.jsp");
	mv.setViewName("index");
		return mv;
	}
	
	@RequestMapping("/vote")
	public ModelAndView vote() {
		System.out.println("/vote 경로진입");
	mv.addObject("section","vote/getlist/list.jsp");
	mv.setViewName("index");
		return mv;
	}
	
	@RequestMapping("/about")
	public ModelAndView about() {
		System.out.println("/about 경로진입");
	mv.addObject("section","index/section1/defualt.jsp");
	mv.setViewName("index");
		return mv;
	}
	
}
