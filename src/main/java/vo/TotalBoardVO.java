package vo;


import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class TotalBoardVO {

	int num;		
	String board_firstkeyword;	
	String board_secondkeyword;	
	String board_name;	
	String board_content;	
	Date board_date;	
	int channel_num_fk;	
	String member_id_fk;	
	String channel_name; 
	String channel_category;

}
