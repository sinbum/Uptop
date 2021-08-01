package service;

import java.util.List;

import vo.BoardVO;

public interface BoardService {
	public List <BoardVO> viewAll();
	public List<BoardVO> selectBoardList(int startIndex, int pageSize);
	public int selectBoardListCnt(BoardVO boardVO);	 
	 
}