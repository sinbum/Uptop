package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import config.mapper.BoardMapper;
import vo.BoardDetailVO;
import vo.BoardVO;
import vo.SelectBoardVO;
import vo.TotalBoardVO;

@Service
@Qualifier("bs")
public class BoardServiceImple implements BoardService{

	@Autowired
	private BoardMapper mapper;	
	
	@Override
	public List<BoardVO> viewAll() {
		return mapper.viewAll();
	}

	@Override
	public List<SelectBoardVO> selectBoardList(int startIndex, int pageSize) {
		return mapper.selectBoardList(startIndex, pageSize);
	}

	@Override
	public int selectBoardListCnt(BoardVO boardVO) {
		return 0;
	}

	@Override
	public int getMaxCount() {
		return mapper.getMaxCount();
	}	
	
	@Override
	public TotalBoardVO searchBoardInfo(String boardNum) {
						
		return mapper.searchBoardInfo(boardNum); 
	}

	public BoardDetailVO searchBoardDetail(String boardNum) {
		// TODO Auto-generated method stub
		return mapper.searchBoardDetail(boardNum);
	}
	
	
	@Override
	public int likeIdCheck(String boardNum, String id) {	
		return mapper.likeIdCheck(boardNum,id);
	}

	@Override
	public int insertValue(String boardNum, String likeHate, String id) {			
		return mapper.insertValue(Integer.parseInt(boardNum),likeHate,id);
	}

	
	@Override
	public Integer getLike(String boardNum,String likeHate) {
		//라이크 개수 확인
		Integer result = mapper.getLike(Integer.parseInt(boardNum) ,likeHate);
		return result;
	}

	
	@Override
	public Integer getHate(String boardNum,String likeHate) {
		//싫어요 개수 확인
		Integer result = mapper.getHate(Integer.parseInt(boardNum),likeHate);
		return result;
	}


	
	

}
