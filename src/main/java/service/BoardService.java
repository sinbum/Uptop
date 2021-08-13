package service;

import java.util.List;

import vo.BoardDetailVO;
import vo.BoardVO;
import vo.SelectBoardVO;
import vo.TotalBoardVO;

public interface BoardService {
	public List <BoardVO> viewAll();
	public List<SelectBoardVO> selectBoardList(int startIndex, int pageSize);
	public int selectBoardListCnt(BoardVO boardVO);
	public int getMaxCount();
	public TotalBoardVO searchBoardInfo(String boardNum);
	public BoardDetailVO searchBoardDetail(String boardNum);
	
	public boolean likeIdCheck(String boardnum, String id);
	public boolean insertValue(String boardnum, String likehate, String id);
	
	public int getLike (String boardnum);
	public int getHate (String boardnum);
}
