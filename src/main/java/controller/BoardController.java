package controller;

import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import paging.Pagination;
import service.BoardService;
import service.BoardServiceImple;
import service.MainService;
import service.MainServiceImple;
import vo.BoardDetail2VO;
import vo.BoardDetailVO;
import vo.BoardVO;
import vo.SelectBoardVO;
import vo.TotalBoardVO;

@Controller
public class BoardController {
	ModelAndView mv;
	
	@Autowired
	MainService mainService;

	@Autowired
	@Qualifier("bs")
	BoardService boardService;
	
	public BoardController() {
	mv= new ModelAndView();
	}
  
    @RequestMapping(value="/board")
    public ModelAndView boardList(@RequestParam(defaultValue="1") int requestpagenum){ 
		mv.addObject("asidestyle","style=\"display:none;\"");
    	// 전체리스트 개수 
        int listCnt = boardService.getMaxCount();        
        Pagination pagination = new Pagination(listCnt, requestpagenum);       
        //한페이지당 7개글 게시.
        //pagination.setPageSize(7);        
        List<SelectBoardVO> list = boardService.selectBoardList(pagination.getStartIndex(), pagination.getPageSize());        
        // 전체리스트 출력        
        //List<BoardVO> list = boardService.viewAll();
        mv.addObject("boardslist",list);        
        mv.addObject("pagination", pagination);
        mv.addObject("section","/board/boardlist");
        mv.setViewName("main");        
        return mv;
    }
    
    @RequestMapping("selectboard")/*아이디와,채널명을받아옴.*/
    public ModelAndView test() {
    	mv.addObject("boardslist",boardService.viewAll());      
		mv.addObject("asidestyle","style=\"display:none;\"");
    	mv.addObject("main","maintest2.jsp");    	
       mv.setViewName("/WEB-INF/mainpage.jsp");    	
    	
		return mv;    	
    }
    
    @RequestMapping("/searchboardnum")
    public ModelAndView searchboardInfo(String boardNum) {  	
    	TotalBoardVO searchBboardInfo = boardService.searchBoardInfo(boardNum);
    	BoardDetailVO searchBoardDetail = boardService.searchBoardDetail(boardNum);    	
    	mv.addObject("boardDetail",searchBoardDetail);
    	mv.addObject("boardInfo",searchBboardInfo);    	
        mv.addObject("section","/board/boarddetail");
        mv.setViewName("main");
		return mv;    	
    }
    
    @RequestMapping("/putlikehate")
    public ModelAndView likehate(String boardNum,String likeHate,HttpServletRequest request) {
    	String id = (String) request.getSession().getAttribute("id");
    	System.out.println("id check : "+id);
    	System.out.println("아이디로 등록된 라이크 체크"+boardService.likeIdCheck(boardNum,id));
    	
    	    	
    	
    	if(boardService.likeIdCheck(boardNum,id)==0) {
    		System.out.println("loginCheck시작 값이 0이 아닐 경우.");
    		
    		if(boardService.insertValue(boardNum,likeHate,id)==1) {
    			mv.addObject("like",boardService.getLike(boardNum,likeHate));
    			System.out.println("좋아요 개수" + boardService.getLike( boardNum,"like"));
    			mv.addObject("hate",boardService.getHate(boardNum,likeHate));
    			System.out.println("싫어요 개수"+boardService.getHate(boardNum,"hate"));
    			
    			System.out.println("성공적으로 좋아요싫어요 추가됨.");
    		}else{
    			mv.addObject("Result","등록중 문제가 생겼습니다.");    			
    			System.out.println("등록실패");
    		}    		
    	}else{    		
    		mv.addObject("result",likeHate + "를 이미 누르셨습니다.");
    		System.out.println("이미 등록함.");
    	}    	    	
    	return mv;    	
    	
    }
    
    
    
}