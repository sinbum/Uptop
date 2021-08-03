package vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
public class BoardChannelVO {
	int channel_num;
	String channel_name; 
	String channel_info;
	String channel_category;
	Date channel_date;
	String member_id_fk;	

}
