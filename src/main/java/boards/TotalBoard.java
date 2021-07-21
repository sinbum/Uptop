package boards;

public class TotalBoard {
BoardsVO boardsvo;
BoardDetailVO boarddetail;

public TotalBoard() {
}

public TotalBoard(BoardsVO boardsvo, BoardDetailVO boarddetail) {
	this.boardsvo = boardsvo;
	this.boarddetail = boarddetail;
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

@Override
public String toString() {
	return "TotalBoard [boardsvo=" + boardsvo + ", boarddetail=" + boarddetail + "]";
}



}
