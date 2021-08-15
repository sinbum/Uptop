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
	
	public int likeIdCheck(String boardNum, String id);
	public int insertValue(String boardNum, String likeHate, String id);
	

	public Integer getLike(String boardNum, String likeHate);
	public Integer getHate(String boardNum, String likeHate);
}
