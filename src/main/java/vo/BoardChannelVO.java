package vo;

import java.sql.Date;

public class BoardChannelVO {
	int channel_num;
	String channel_name; 
	String channel_info;
	String channel_category;
	Date channel_date;
	String member_id_fk;
	
	public BoardChannelVO() {
	}
	
	public int getChannel_num() {
		return channel_num;
	}
	public void setChannel_num(int channel_num) {
		this.channel_num = channel_num;
	}
	public String getChannel_name() {
		return channel_name;
	}
	public void setChannel_name(String channel_name) {
		this.channel_name = channel_name;
	}
	public String getChannel_info() {
		return channel_info;
	}
	public void setChannel_info(String channel_info) {
		this.channel_info = channel_info;
	}
	public String getChannel_category() {
		return channel_category;
	}
	public void setChannel_category(String channel_category) {
		this.channel_category = channel_category;
	}
	public Date getChannel_date() {
		return channel_date;
	}
	public void setChannel_date(Date channel_date) {
		this.channel_date = channel_date;
	}
	public String getMember_id_fk() {
		return member_id_fk;
	}
	public void setMember_id_fk(String member_id_fk) {
		this.member_id_fk = member_id_fk;
	}
	public BoardChannelVO(int channel_num, String channel_name, String channel_info, String channel_category,
			Date channel_date, String member_id_fk) {
		super();
		this.channel_num = channel_num;
		this.channel_name = channel_name;
		this.channel_info = channel_info;
		this.channel_category = channel_category;
		this.channel_date = channel_date;
		this.member_id_fk = member_id_fk;
	}
	@Override
	public String toString() {
		return "BoardChannelVO [channel_num=" + channel_num + ", channel_name=" + channel_name + ", channel_info="
				+ channel_info + ", channel_category=" + channel_category + ", channel_date=" + channel_date
				+ ", member_id_fk=" + member_id_fk + "]";
	} 
	
	

}
