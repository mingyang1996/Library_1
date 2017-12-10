package entity;

public class Borrow {

	private int ID;
	private String reader_ID;
	private String book_ID;
	private String borrowTime;
	private String backTime;
	
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public String getReader_ID() {
		return reader_ID;
	}
	public void setReader_ID(String reader_ID) {
		this.reader_ID = reader_ID;
	}
	public String getBook_ID() {
		return book_ID;
	}
	public void setBook_ID(String book_ID) {
		this.book_ID = book_ID;
	}
	public String getBorrowTime() {
		return borrowTime;
	}
	public void setBorrowTime(String borrowTime) {
		this.borrowTime = borrowTime;
	}
	public String getBackTime() {
		return backTime;
	}
	public void setBackTime(String backTime) {
		this.backTime = backTime;
	}
	
}
