package vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class SelectBoardVO {	


		int board_num;		
		String board_firstkeyword;	
		String board_secondkeyword;	
		String board_name;	
		String board_content;	
		Date board_date;	
		int channel_num;
		
//		int board_num;		
//		String board_firstkeyword;	
//		String board_secondkeyword;	
//		String board_name;	
//		String board_content;	
//		Date board_date;	
//		int channel_num;
//		int member_id_fk;

	//select BOARD_NUM, BOARD_FIRSTKEYWORD, BOARD_SECONDKEYWORD, 
	//BOARD_NAME, BOARD_CONTENT, BOARD_DATE, CHANNEL_NUM, MEMBER_ID_FK    
}


