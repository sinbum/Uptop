package boards;

import java.sql.Connection;
import java.sql.DriverManager;

public class Main {

	public static void main(String[] args) {
//BoardsDAO b= new BoardsDAO();
////System.out.println("결과값 : "+b.board_test_all());
//
//
//System.out.println("결과값 : "+b.board_count_update());
	
	
	Connection conn = null;
		//ID, PASSWORD NULL OR "" 를 확인해하는 사항이 있어야함.-생략
		
		String dburl="jdbc:oracle:thin:@localhost:1521:xe";
		String dbuser="system"; 
		String dbpassword="1111";
		try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		 conn=DriverManager.getConnection(dburl,dbuser,dbpassword);
		}catch(Exception e) {
			e.printStackTrace();
		}
		if(conn==null){
			System.out.println("db접속실패");
		}else{
			System.out.println("db접속성공");
		}
	
	
	}
}
