package boards;

public class BoardDetailVO {
int BoardDetailNum;
int BoardCount;
int BoardLike;
int BoardHate;



public BoardDetailVO() {
	// TODO Auto-generated constructor stub
}
public BoardDetailVO(int boardDetailNum, int boardCount, int boardLike, int boardHate) {
	BoardDetailNum = boardDetailNum;
	BoardCount = boardCount;
	BoardLike = boardLike;
	BoardHate = boardHate;
}


public int getBoardDetailNum() {
	return BoardDetailNum;
}

public void setBoardDetailNum(int boardDetailNum) {
	BoardDetailNum = boardDetailNum;
}

public int getBoardCount() {
	return BoardCount;
}

public void setBoardCount(int boardCount) {
	BoardCount = boardCount;
}

public int getBoardLike() {
	return BoardLike;
}

public void setBoardLike(int boardLike) {
	BoardLike = boardLike;
}

public int getBoardHate() {
	return BoardHate;
}

public void setBoardHate(int boardHate) {
	BoardHate = boardHate;
}

@Override
public String toString() {
	return "BoardDetailVO [BoardDetailNum=" + BoardDetailNum + ", BoardCount=" + BoardCount + ", BoardLike=" + BoardLike
			+ ", BoardHate=" + BoardHate + "]";
}


}
