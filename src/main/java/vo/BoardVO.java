package vo;

import java.sql.Date;

public class BoardVO {
	
	int num;		
	String board_firstkeyword;	
	String board_secondkeyword;	
	String board_name;	
	String board_content;	
	Date board_date;	
	int channel_num_fk;
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getBoard_firstkeyword() {
		return board_firstkeyword;
	}
	public void setBoard_firstkeyword(String board_firstkeyword) {
		this.board_firstkeyword = board_firstkeyword;
	}
	public String getBoard_secondkeyword() {
		return board_secondkeyword;
	}
	public void setBoard_secondkeyword(String board_secondkeyword) {
		this.board_secondkeyword = board_secondkeyword;
	}
	public String getBoard_name() {
		return board_name;
	}
	public void setBoard_name(String board_name) {
		this.board_name = board_name;
	}
	public String getBoard_content() {
		return board_content;
	}
	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}
	public Date getBoard_date() {
		return board_date;
	}
	public void setBoard_date(Date board_date) {
		this.board_date = board_date;
	}
	public int getChannel_num_fk() {
		return channel_num_fk;
	}
	public void setChannel_num_fk(int channel_num_fk) {
		this.channel_num_fk = channel_num_fk;
	}
	@Override
	public String toString() {
		return "BoardVO [num=" + num + ", board_firstkeyword=" + board_firstkeyword + ", board_secondkeyword="
				+ board_secondkeyword + ", board_name=" + board_name + ", board_content=" + board_content
				+ ", board_date=" + board_date + ", channel_num_fk=" + channel_num_fk + "]";
	}
	public BoardVO(int num, String board_firstkeyword, String board_secondkeyword, String board_name,
			String board_content, Date board_date, int channel_num_fk) {
		super();
		this.num = num;
		this.board_firstkeyword = board_firstkeyword;
		this.board_secondkeyword = board_secondkeyword;
		this.board_name = board_name;
		this.board_content = board_content;
		this.board_date = board_date;
		this.channel_num_fk = channel_num_fk;
	}
	
	
	
}
