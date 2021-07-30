package test;

import java.util.List;
import service.Service;
import vo.TotalBoardVO;

public class MainTest {

	public static void main(String[] args) {
		
//			System.out.println("idnex경로들어옴");
			Service service = new Service();

			List<TotalBoardVO> boardslist =service.getboardslist();
			System.out.println("보드리스트 메인에서 출력."+boardslist.get(0).getBoardchannel().getChannel_name());
		
		
	}

}
