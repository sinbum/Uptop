package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import paging.Pagination;
import service.BoardService;
import service.MainService;
import service.MainServiceImple;
import vo.BoardVO;

@Controller
@RequestMapping(value="/board/")
public class BoardController {
	ModelAndView mv;
	
	@Autowired
	MainServiceImple mainservice;

	@Autowired
	@Qualifier("bs")
	BoardService boardService;
	
	public BoardController() {
	mv= new ModelAndView();
	}
  
    @RequestMapping(value="getlist")
    public ModelAndView boardList(@RequestParam(defaultValue="1") int requestpagenum){ 
    	
    	// 전체리스트 개수 
        int listCnt = boardService.getMaxCount();
        
        Pagination pagination = new Pagination(listCnt, requestpagenum);
        // 전체리스트 출력        
        List<BoardVO> list = boardService.viewAll();        
        mv.addObject("boardslist",list);        
        mv.addObject("pagination", pagination);        
        mv.addObject("main","maintest.jsp");
        mv.setViewName("/WEB-INF/mainpage.jsp");
        
        return mv;
    }
    
    @RequestMapping("selectboard")/*아이디와,채널명을받아옴.*/
    public ModelAndView test() {
    	mv.addObject("boardslist",boardService.viewAll());      
    	
    	mv.addObject("main","maintest2.jsp");    	
       mv.setViewName("/WEB-INF/mainpage.jsp");    	
    	
		return mv;    	
    }
    
    
    
}