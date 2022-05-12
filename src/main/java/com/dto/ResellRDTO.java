package com.dto;

import org.apache.ibatis.type.Alias;

@Alias("ResellRDTO")
public class ResellRDTO {

	int resell_rno;
	int memberno;
	String nickname;
	String rafflename;
	String totalprice;
	String attendamount;
	String perprice;
	String deadline;
	String text;
	String img;
	public ResellRDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ResellRDTO(int resell_rno, int memberno, String nickname, String rafflename, String totalprice,
			String attendamount, String perprice, String deadline, String text, String img) {
		super();
		this.resell_rno = resell_rno;
		this.memberno = memberno;
		this.nickname = nickname;
		this.rafflename = rafflename;
		this.totalprice = totalprice;
		this.attendamount = attendamount;
		this.perprice = perprice;
		this.deadline = deadline;
		this.text = text;
		this.img = img;
	}
	@Override
	public String toString() {
		return "ResellRDTO [resell_rno=" + resell_rno + ", memberno=" + memberno + ", nickname=" + nickname
				+ ", rafflename=" + rafflename + ", totalprice=" + totalprice + ", attendamount=" + attendamount
				+ ", perprice=" + perprice + ", deadline=" + deadline + ", text=" + text + ", img=" + img + "]";
	}
	public int getResell_rno() {
		return resell_rno;
	}
	public void setResell_rno(int resell_rno) {
		this.resell_rno = resell_rno;
	}
	public int getMemberno() {
		return memberno;
	}
	public void setMemberno(int memberno) {
		this.memberno = memberno;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getRafflename() {
		return rafflename;
	}
	public void setRafflename(String rafflename) {
		this.rafflename = rafflename;
	}
	public String getTotalprice() {
		return totalprice;
	}
	public void setTotalprice(String totalprice) {
		this.totalprice = totalprice;
	}
	public String getAttendamount() {
		return attendamount;
	}
	public void setAttendamount(String attendamount) {
		this.attendamount = attendamount;
	}
	public String getPerprice() {
		return perprice;
	}
	public void setPerprice(String perprice) {
		this.perprice = perprice;
	}
	public String getDeadline() {
		return deadline;
	}
	public void setDeadline(String deadline) {
		this.deadline = deadline;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	
	
}
