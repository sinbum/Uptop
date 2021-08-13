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

/** 좋아요기능-해당게시판에 등록된 아이디가 있는 지 확인 **/
public int likeIdCheck(String boardnum, String id);

/**좋아요,싫어요 추가 **/
public int inserValue(String boardnum, String likehate, String id);

/**등록된 좋아요 개수확인 **/
public int getLike();

/**등록된 싫어요 개수확인 **/
public int getHate();



}
