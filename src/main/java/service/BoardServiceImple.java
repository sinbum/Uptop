package service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

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
	public boolean likeIdCheck(String boardnum, String id) {
		int result = mapper.likeIdCheck(boardnum,id);
		
		//라이크버튼을 눌렀을 경우 id값이 있을경우 등록된것으로 인지.
		if (result == 1) {
			return false;
		}
		return true;
	}

	@Override
	public boolean insertValue(String boardnum, String likehate, String id) {
		int result = mapper.inserValue(boardnum,likehate,id);		
		if(result == 1) {
			//등록이 완료되면 true일 경우 성공
			return true;
		}
		return false;
	}

	@Override
	public int getLike(String boardnum) {
		//라이크 개수 확인
		int result = mapper.getLike();
		return result;
	}

	@Override
	public int getHate(String boardnum) {
		//싫어요 개수 확인
		int result = mapper.getHate();
		return result;
	}


	
	

}
