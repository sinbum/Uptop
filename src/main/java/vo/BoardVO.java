package vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class BoardVO {	
	int num;		
	String board_firstkeyword;	
	String board_secondkeyword;	
	String board_name;	
	String board_content;	
	Date board_date;	
	int channel_num_fk;	
}
