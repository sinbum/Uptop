package vo;

import java.sql.Date;

public class BoardVO {
	
	int boards_num;		
	String boards_name;
	String boards_content;
	Date boards_date;
	int channel_num_fk;

	public void setStartIndex(int startIndex) {
		// TODO Auto-generated method stub
		
	}

	public void setCntPerPage(int pageSize) {
		// TODO Auto-generated method stub
		
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

	@Override
	public String toString() {
		return "BoardVO [boards_num=" + boards_num + ", boards_name=" + boards_name + ", boards_content="
				+ boards_content + ", boards_date=" + boards_date + ", channel_num_fk=" + channel_num_fk + "]";
	}

	public BoardVO(int boards_num, String boards_name, String boards_content, Date boards_date, int channel_num_fk) {
		super();
		this.boards_num = boards_num;
		this.boards_name = boards_name;
		this.boards_content = boards_content;
		this.boards_date = boards_date;
		this.channel_num_fk = channel_num_fk;
	}

}
