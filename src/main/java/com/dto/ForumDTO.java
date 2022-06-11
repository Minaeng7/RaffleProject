package com.dto;

import java.util.Date;

import org.apache.ibatis.type.Alias;

@Alias("ForumDTO")
public class ForumDTO {
	
	int bno;
	int memberno;
	String title;
	String content;
	String username;
	Date regdate;
	int viewcnt;
	public ForumDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ForumDTO(int bno, int memberno, String title, String content, String username, Date regdate, int viewcnt) {
		super();
		this.bno = bno;
		this.memberno = memberno;
		this.title = title;
		this.content = content;
		this.username = username;
		this.regdate = regdate;
		this.viewcnt = viewcnt;
	}
	@Override
	public String toString() {
		return "ForumDTO [bno=" + bno + ", memberno=" + memberno + ", title=" + title + ", content=" + content
				+ ", username=" + username + ", regdate=" + regdate + ", viewcnt=" + viewcnt + "]";
	}
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public int getMemberno() {
		return memberno;
	}
	public void setMemberno(int memberno) {
		this.memberno = memberno;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public int getViewcnt() {
		return viewcnt;
	}
	public void setViewcnt(int viewcnt) {
		this.viewcnt = viewcnt;
	}
	
}
