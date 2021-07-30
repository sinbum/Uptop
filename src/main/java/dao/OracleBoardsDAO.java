 

package dao;
 

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.stereotype.Repository;

import vo.BoardDetailVO;
import vo.BoardsVO;
import vo.TotalBoardVO;

@Repository
public class OracleBoardsDAO implements BoardDAO{
	Connection conn;
	
	@Autowired
	DriverManagerDataSource ds;
	
	
	public OracleBoardsDAO() {
		
		
	}
//출력부분 ------------------------------------------------------------------------------------------------------------------------------
	public List <TotalBoardVO> getTotallist() {
		ArrayList<TotalBoardVO> list= new ArrayList<TotalBoardVO>();
		String sql="select * from board";
		try {
			PreparedStatement pstmt= ds.getConnection().prepareStatement(sql);
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
				BoardDetailVO boarddetail=getboarddetail(boards_num);
				
				BoardsVO boardsvo=
						new BoardsVO(boards_num,boards_name,boards_content,boards_date,channel_num_fk);
				
				TotalBoardVO tb= new TotalBoardVO(boardsvo,boarddetail);
				list.add(tb);
			}
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return list;	
	}
	
	
	public List <BoardsVO> getlist() {
		ArrayList<BoardsVO> list= new ArrayList<BoardsVO>();
		String sql="select * from board";
		try {
			PreparedStatement pstmt= ds.getConnection().prepareStatement(sql);
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
	public BoardsVO getboardvo(int num) {
		BoardsVO boardsvo =null;		
		String sql="select * from board where board_num=?";
		try {
			PreparedStatement pstmt= ds.getConnection().prepareStatement(sql);
			pstmt.setInt(1, num);
			ResultSet rs= pstmt.executeQuery();
			
			//			DB객체 순서.			
			//			BOARD_NUM
			//			BOARD_NAME 
			//			BOARD_CONTENT 
			//			BOARD_DATE 
			//			CHANNEL_NUM_fk
			
			if(rs.next()) {
				//1부터시작.
				int boards_num 			= rs.getInt(1);
				String boards_name 		= rs.getString(2);
				String boards_content 	= rs.getString(3);
				Date boards_date		= rs.getDate(4);
				int channel_num_fk		= rs.getInt(5);
				
				boardsvo=
						new BoardsVO(boards_num,boards_name,boards_content,boards_date,channel_num_fk);

			}
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		return boardsvo;
		
	}
	
	public BoardDetailVO getboarddetail(int boardnum) {
		BoardDetailVO bd = null;
		String sql="select * from board_detail where board_detail_num=?";
		try {
			PreparedStatement pstmt= ds.getConnection().prepareStatement(sql);
			pstmt.setInt(1,boardnum);
			
			ResultSet rs= pstmt.executeQuery();
			
			if(rs.next()) {
				int BoardDetailNum = rs.getInt(2);
				int BoardCount 	= rs.getInt(3);
				int BoardLike = rs.getInt(4);
				bd = new BoardDetailVO(boardnum,BoardDetailNum,BoardDetailNum,BoardLike);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		
		
		return bd;
		
	}
	
	public TotalBoardVO getTotalboard(String parameter) {		
		BoardsVO bv = getboardvo(Integer.parseInt(parameter));
		BoardDetailVO bd=getboarddetail(Integer.parseInt(parameter));
		TotalBoardVO tb= new TotalBoardVO(bv,bd);
		return tb;
	}
	
	
	
//입력부분 ------------------------------------------------------------------------------------------------------------------------------
//업데이트부분 ---------------------------------------------------------------------------------------------------------------------------
	
	//게시글 추가시 조회수 증가
	public int board_count_update() {
	int result=0;	
	String sql= "update board_detail "
			+ "set board_COUNT = board_COUNT + 1 "
			+ "where board_detail_num = ?"; 
	try {
		PreparedStatement pstmt = ds.getConnection().prepareStatement(sql);
		pstmt.setInt(1, 1);		
		result = pstmt.executeUpdate();
		
		
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	
	return result;
	}
	
	//좋아요 클릭시 개수 증가
		public int board_like_update() {
		int result=0;	
		String sql= "update board_detail "
				+ "set board_like = board_like + 1 "
				+ "where board_detail_num = ?"; 
		try {
			PreparedStatement pstmt = ds.getConnection().prepareStatement(sql);
			pstmt.setInt(1, 1);		
			result = pstmt.executeUpdate();
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return result;
		}
		
		//싫어요 클릭시 개수 증가
		public int board_hate_update() {
		int result=0;	
		String sql= "update board_detail "
				+ "set board_hate = board_hate + 1 "
				+ "where board_detail_num = ?"; 
		try {
			PreparedStatement pstmt = ds.getConnection().prepareStatement(sql);
			pstmt.setInt(1, 1);		
			result = pstmt.executeUpdate();
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return result;
		}
		
		
	
	
	
//삭제부분 ------------------------------------------------------------------------------------------------------------------------------	

}
