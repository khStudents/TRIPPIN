package kr.co.trippin.faq.model.vo;

import java.sql.Date;

public class FaqBoard {

	private int board_num;
	private String subject;
	private String contents;
	private int hits;
	private Date reg_Date;
		
	public FaqBoard() {
		super();
		// TODO Auto-generated constructor stub
	}
	public FaqBoard(int board_num, String subject, String contents, int hits, Date reg_Date) {
		super();
		this.board_num = board_num;
		this.subject = subject;
		this.contents = contents;
		this.hits = hits;
		this.reg_Date = reg_Date;
	}
	public int getBoard_num() {
		return board_num;
	}
	public void setBoard_num(int board_num) {
		this.board_num = board_num;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public int getHits() {
		return hits;
	}
	public void setHits(int hits) {
		this.hits = hits;
	}
	public Date getReg_Date() {
		return reg_Date;
	}
	public void setReg_Date(Date reg_Date) {
		this.reg_Date = reg_Date;
	}
	
	
}
