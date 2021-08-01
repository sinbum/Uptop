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
	
	@Autowired
	MainServiceImple service;
	
	@Autowired
	@Qualifier("bs")
	BoardService boardService;
  
    @RequestMapping(value="getlist")
    public ModelAndView boardList(@RequestParam(defaultValue="1") int requestpagenum){ 
    	
    			
    	ModelAndView mv = new ModelAndView();
        // 전체리스트 개수 
        int listCnt = 203/*sql에서 가져온 count값 (게시물 총 개수)*/;
                
        Pagination pagination = new Pagination(listCnt, requestpagenum);
                // 전체리스트 출력        
        List<BoardVO> list = boardService.selectBoardList(pagination.getStartIndex(),pagination.getPageSize());
        
        //System.out.println(list);
        mv.addObject("boardslist",list);
        //mv.addObject("listCnt",listCnt);
        mv.addObject("pagination", pagination);
        
        mv.addObject("main","maintest.jsp");
        mv.setViewName("/WEB-INF/mainpage.jsp");
        
        return mv;
    }
    
    @RequestMapping("test")
    public ModelAndView test() {
    	ModelAndView mv = new ModelAndView();
    	mv.addObject("boardslist",boardService.viewAll());
       
    	
    	mv.addObject("main","maintest2.jsp");    	
       mv.setViewName("/WEB-INF/mainpage.jsp");    	
    	
		return mv;    	
    	
    }
    
    
    
}