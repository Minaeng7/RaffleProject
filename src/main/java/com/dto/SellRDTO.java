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
	int viewcnt;
	String text;
	String deadline;
	String image;
	String image1;
	String image2;
	
	public SellRDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public SellRDTO(int sell_rno, int memberno, String nickname, String rafflename, String raffleprice,
			String raffleamount, int viewcnt, String text, String deadline, String image, String image1,
			String image2) {
		super();
		this.sell_rno = sell_rno;
		this.memberno = memberno;
		this.nickname = nickname;
		this.rafflename = rafflename;
		this.raffleprice = raffleprice;
		this.raffleamount = raffleamount;
		this.viewcnt = viewcnt;
		this.text = text;
		this.deadline = deadline;
		this.image = image;
		this.image1 = image1;
		this.image2 = image2;
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
	public int getViewcnt() {
		return viewcnt;
	}
	public void setViewcnt(int viewcnt) {
		this.viewcnt = viewcnt;
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
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}

	
	public String getImage1() {
		return image1;
	}

	public void setImage1(String image1) {
		this.image1 = image1;
	}

	public String getImage2() {
		return image2;
	}

	public void setImage2(String image2) {
		this.image2 = image2;
	}

	@Override
	public String toString() {
		return "SellRDTO [sell_rno=" + sell_rno + ", memberno=" + memberno + ", nickname=" + nickname + ", rafflename="
				+ rafflename + ", raffleprice=" + raffleprice + ", raffleamount=" + raffleamount + ", viewcnt="
				+ viewcnt + ", text=" + text + ", deadline=" + deadline + ", image=" + image + ", image1=" + image1
				+ ", image2=" + image2 + "]";
	}

	
	
	

}
