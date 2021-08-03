package service;

import java.util.List;

import vo.BoardDetailVO;
import vo.BoardVO;
import vo.TotalBoardVO;

public interface BoardService {
	public List <BoardVO> viewAll();
	public List<BoardVO> selectBoardList(int startIndex, int pageSize);
	public int selectBoardListCnt(BoardVO boardVO);
	public int getMaxCount();	
	public TotalBoardVO searchBoardInfo(String boardNum);
	public BoardDetailVO searchBoardDetail(String boardNum);
	 
}
