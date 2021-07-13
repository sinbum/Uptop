package boards;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BoardsDAO {
	Connection conn;

	public BoardsDAO() {
		//ID, PASSWORD NULL OR "" 를 확인해하는 사항이 있어야함.-생략
		String dburl="jdbc:oracle:thin:@localhost:1521:xe";
		String dbuser="uptopadmin";
		String dbpassword="3419";
		try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn=DriverManager.getConnection(dburl,dbuser,dbpassword);
		}catch(Exception e) {
			
		}
		if(conn==null){
			System.out.println("db접속실패");
		}else{
			System.out.println("db접속성공");
		}
	}

	public ArrayList getlist() {
		ArrayList<BoardsVO> list= new ArrayList();
		String sql="select * from board";
		try {
			PreparedStatement pstmt= conn.prepareStatement(sql);
			ResultSet rs= pstmt.executeQuery();
			
			//			DB객체 순서.			
			//			BOARD_NUM
			//			BOARD_NAME 
			//			BOARD_CONTENT 
			//			BOARD_DATE 
			//			CHANNEL_NUM_fk
			
			while(rs.next()) {
				//1부터시작.
				int boards_num 			= rs.getInt(1);
				String boards_name 		= rs.getString(2);
				String boards_content 	= rs.getString(3);
				Date boards_date		= rs.getDate(4);
				int channel_num_fk		= rs.getInt(5);
				
				BoardsVO boardsvo=
						new BoardsVO(boards_num,boards_name,boards_content,boards_date,channel_num_fk);
				list.add(boardsvo);				
			}
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		return list;
		
	}

}
