package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import paging.Pagination;
import service.MainService;
import vo.BoardVO;

@Controller
@RequestMapping(value="/board/")
public class BoardController {
	
	@Autowired
	MainService service;
  
    @RequestMapping(value="getlist")
    public ModelAndView boardList(@RequestParam(defaultValue="1") int requestpagenum){ 
    	
    	ModelAndView mv = new ModelAndView(); 
        // 전체리스트 개수 
        int listCnt = 203/*sql에서 가져온 count값 (게시물 총 개수)*/;
                
        Pagination pagination = new Pagination(listCnt, requestpagenum);
                // 전체리스트 출력        
        List<BoardVO> list = service.selectBoardList(pagination.getStartIndex(),pagination.getPageSize());
        
        //System.out.println(list);
        mv.addObject("boardslist",list);
        //mv.addObject("listCnt",listCnt);
        mv.addObject("pagination", pagination);
        
        mv.addObject("main","maintest.jsp");
        mv.setViewName("/WEB-INF/mainpage.jsp");
        
        return mv;
    }
    
}