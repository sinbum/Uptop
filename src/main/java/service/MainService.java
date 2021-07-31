package service;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import vo.BoardVO;

@Service
public class MainService {

Date date;
	
	public int selectBoardListCnt(BoardVO boardVO) {

		
		return 200;
	}

	public List<BoardVO> selectBoardList(int startIndex, int pageSize) {
		List<BoardVO> setlist= new ArrayList<BoardVO>();
		
		date=new Date(91,01,15);		
		BoardVO bv;
		for(int i=0;i<210;i++) {
			bv= new BoardVO((i+1), "게시판제목"+(i+1), "게시판내용입니다"+ (i+1),date, 1);
			setlist.add(bv);
		}
		
		List <BoardVO> list = new ArrayList<BoardVO>();
		for(int i=startIndex;i<startIndex+pageSize;i++) {
			//System.out.println(setlist.get(i));			
			list.add(setlist.get(i));
		}		
		return list;
	}
	
	public int logincheck(String id, String password) {
		
		return 1;
	}

	public int signin(String id, String password, String email) {

		return 1;
	}

	public int makechannel() {
		
		return 1;
	}

	
}
