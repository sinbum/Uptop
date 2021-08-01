package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import config.mapper.BoardMapper;
import vo.BoardVO;

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
	public List<BoardVO> selectBoardList(int startIndex, int pageSize) {
		return null;
	}

	@Override
	public int selectBoardListCnt(BoardVO boardVO) {
		return 0;
	}
	
	

}
