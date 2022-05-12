package com.dto;

import org.apache.ibatis.type.Alias;

@Alias("SellRDTO")
public class SellRDTO {
	
	int sell_rno;
	int memberno;
	String nickname;
	String rafflename;
	String raffleprice;
	String raffleamount;
	String text;
	String deadline;
	String img;
	public SellRDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public SellRDTO(int sell_rno, int memberno, String nickname, String rafflename, String raffleprice,
			String raffleamount, String text, String deadline, String img) {
		super();
		this.sell_rno = sell_rno;
		this.memberno = memberno;
		this.nickname = nickname;
		this.rafflename = rafflename;
		this.raffleprice = raffleprice;
		this.raffleamount = raffleamount;
		this.text = text;
		this.deadline = deadline;
		this.img = img;
	}
	@Override
	public String toString() {
		return "SellRDTO [sell_rno=" + sell_rno + ", memberno=" + memberno + ", nickname=" + nickname + ", rafflename="
				+ rafflename + ", raffleprice=" + raffleprice + ", raffleamount=" + raffleamount + ", text=" + text
				+ ", deadline=" + deadline + ", img=" + img + "]";
	}
	public int getSell_rno() {
		return sell_rno;
	}
	public void setSell_rno(int sell_rno) {
		this.sell_rno = sell_rno;
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
	public String getRaffleprice() {
		return raffleprice;
	}
	public void setRaffleprice(String raffleprice) {
		this.raffleprice = raffleprice;
	}
	public String getRaffleamount() {
		return raffleamount;
	}
	public void setRaffleamount(String raffleamount) {
		this.raffleamount = raffleamount;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getDeadline() {
		return deadline;
	}
	public void setDeadline(String deadline) {
		this.deadline = deadline;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	
}
