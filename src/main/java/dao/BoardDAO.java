package dao;

import java.util.List;

import vo.BoardDetailVO;
import vo.BoardsVO;
import vo.TotalBoardVO;

public interface BoardDAO {
	public List <TotalBoardVO> getTotallist();
	public List <BoardsVO> getlist();
	public BoardsVO getboardvo(int num);
	public BoardDetailVO getboarddetail(int boardnum);
	public TotalBoardVO getTotalboard(String parameter);		
	public int board_count_update();
	public int board_like_update();
	public int board_hate_update();
	
}
