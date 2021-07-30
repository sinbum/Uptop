package vo;

public class TotalBoardVO {
BoardsVO boardsvo;
BoardDetailVO boarddetail;
BoardChannelVO boardchannel;

public TotalBoardVO() {
}

public BoardsVO getBoardsvo() {
	return boardsvo;
}

public void setBoardsvo(BoardsVO boardsvo) {
	this.boardsvo = boardsvo;
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
	return "TotalBoardVO [boardsvo=" + boardsvo + ", boarddetail=" + boarddetail + ", boardchannel=" + boardchannel
			+ "]";
}

public TotalBoardVO(BoardsVO boards, BoardDetailVO boarddetail, BoardChannelVO boardchannel) {
	super();
	this.boardsvo = boards;
	this.boarddetail = boarddetail;
	this.boardchannel = boardchannel;
}




}
