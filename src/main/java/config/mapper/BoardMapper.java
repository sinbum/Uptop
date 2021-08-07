package config.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import vo.BoardDetailVO;
import vo.BoardVO;
import vo.SelectBoardVO;
import vo.TotalBoardVO;

public interface BoardMapper {
 
public List <BoardVO> viewAll();
 public List <SelectBoardVO> selectBoardList(@Param("startIndex") int startIndex,@Param("pageSize") int pageSize);
 public int selectBoardListCnt(BoardVO boardVO);
public int getMaxCount();
public TotalBoardVO searchBoardInfo(String boardNum);
public BoardDetailVO searchBoardDetail(String boardNum);



}
