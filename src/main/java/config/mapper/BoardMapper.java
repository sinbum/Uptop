package config.mapper;

import java.util.List;


import vo.BoardVO;

public interface BoardMapper {
 
public List <BoardVO> viewAll();
 public List <BoardVO> selectBoardList(int startIndex, int pageSize);
 public int selectBoardListCnt(BoardVO boardVO);
public int getMaxCount();

}
