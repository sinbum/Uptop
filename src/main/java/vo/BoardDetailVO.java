package vo;

public class BoardDetailVO {
int boarddetailnum;
int boardcount;
int boardlike;
int boardhate;

public BoardDetailVO() {
	// TODO Auto-generated constructor stub
}

public int getBoarddetailnum() {
	return boarddetailnum;
}
public void setBoarddetailnum(int boarddetailnum) {
	this.boarddetailnum = boarddetailnum;
}
public int getBoardcount() {
	return boardcount;
}
public void setBoardcount(int boardcount) {
	this.boardcount = boardcount;
}
public int getBoardlike() {
	return boardlike;
}
public void setBoardlike(int boardlike) {
	this.boardlike = boardlike;
}
public int getBoardhate() {
	return boardhate;
}
public void setBoardhate(int boardhate) {
	this.boardhate = boardhate;
}
@Override
public String toString() {
	return "BoardDetailVO [boarddetailnum=" + boarddetailnum + ", boardcount=" + boardcount + ", boardlike=" + boardlike
			+ ", boardhate=" + boardhate + "]";
}
public BoardDetailVO(int boarddetailnum, int boardcount, int boardlike, int boardhate) {

	this.boarddetailnum = boarddetailnum;
	this.boardcount = boardcount;
	this.boardlike = boardlike;
	this.boardhate = boardhate;
}

}
