package vo;

import java.sql.Date;

public class BoardsVO {
	int boards_num;		
	String boards_name;
	String boards_content;
	Date boards_date;
	int channel_num_fk;
	
	public BoardsVO() {
		// TODO Auto-generated constructor stub
	}
	
	
	@Override
	public String toString() {
		return "BoardsVO [boards_num=" + boards_num + ", boards_name=" + boards_name + ", boards_content="
				+ boards_content + ", boards_date=" + boards_date + ", channel_num_fk=" + channel_num_fk + "]";
	}
	public BoardsVO(int boards_num, String boards_name, String boards_content, Date boards_date, int channel_num_fk) {
		super();
		this.boards_num = boards_num;
		this.boards_name = boards_name;
		this.boards_content = boards_content;
		this.boards_date = boards_date;
		this.channel_num_fk = channel_num_fk;
	}
	public int getBoards_num() {
		return boards_num;
	}
	public void setBoards_num(int boards_num) {
		this.boards_num = boards_num;
	}
	public String getBoards_name() {
		return boards_name;
	}
	public void setBoards_name(String boards_name) {
		this.boards_name = boards_name;
	}
	public String getBoards_content() {
		return boards_content;
	}
	public void setBoards_content(String boards_content) {
		this.boards_content = boards_content;
	}
	public Date getBoards_date() {
		return boards_date;
	}
	public void setBoards_date(Date boards_date) {
		this.boards_date = boards_date;
	}
	public int getChannel_num_fk() {
		return channel_num_fk;
	}
	public void setChannel_num_fk(int channel_num_fk) {
		this.channel_num_fk = channel_num_fk;
	}

	

}
