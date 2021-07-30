package service;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import vo.BoardChannelVO;
import vo.BoardDetailVO;
import vo.BoardsVO;
import vo.TotalBoardVO;

public class Service {
public Service() {
	// TODO Auto-generated constructor stub
}

public int logincheck(String id, String password) {
	
	return 1;
}

public int signin(String id, String password, String email) {

	return 1;
}

public List<TotalBoardVO> getboardslist() {
	BoardDetailVO boarddetail = new BoardDetailVO();
	BoardsVO boards = new BoardsVO();
	BoardChannelVO boardchannel = new BoardChannelVO();
	List<TotalBoardVO> list = new ArrayList<TotalBoardVO>();	

	boarddetail.setBoardcount(200);
	boarddetail.setBoarddetailnum(1);
	boarddetail.setBoardhate(500);
	boarddetail.setBoardlike(20);
	
	System.out.println(boarddetail.toString());
	
	
	boards.setBoards_content("내용");
	boards.setBoards_date(new Date(1991, 02, 15));
	boards.setBoards_name("제목");
	boards.setBoards_num(1);
	boards.setChannel_num_fk(1);
	
	System.out.println(boards.toString());
	
	boardchannel.setChannel_category("음식");
	boardchannel.setChannel_date(new Date(1991, 02, 15));
	boardchannel.setChannel_info("안녕하세요 채널정보입니다.");
	boardchannel.setChannel_name("채널명헤헤");
	boardchannel.setChannel_num(1);
	boardchannel.setMember_id_fk("1");	
	
	TotalBoardVO totalboard = new TotalBoardVO(boards,boarddetail,boardchannel);
	
	System.out.println(boardchannel.toString());
	
	list.add(totalboard);	
	return list;
}

public int makechannel() {
	
	return 1;
}
}
