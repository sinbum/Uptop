package vo;

public class TotalBoardVO {
BoardVO boardvo;
BoardDetailVO boarddetail;
BoardChannelVO boardchannel;

public BoardVO getBoardvo() {
	return boardvo;
}
public void setBoardvo(BoardVO boardvo) {
	this.boardvo = boardvo;
}
public BoardDetailVO getBoarddetail() {
	return boarddetail;
}
public void setBoarddetail(BoardDetailVO boarddetail) {
	this.boarddetail = boarddetail;
}
public BoardChannelVO getBoardchannel() {
	return boardchannel;
}
public void setBoardchannel(BoardChannelVO boardchannel) {
	this.boardchannel = boardchannel;
}
@Override
public String toString() {
	return "TotalBoardVO [boardvo=" + boardvo + ", boarddetail=" + boarddetail + ", boardchannel=" + boardchannel + "]";
}
public TotalBoardVO(BoardVO boardvo, BoardDetailVO boarddetail, BoardChannelVO boardchannel) {
	super();
	this.boardvo = boardvo;
	this.boarddetail = boarddetail;
	this.boardchannel = boardchannel;
}



}
