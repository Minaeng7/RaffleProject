package com.dto;

import org.apache.ibatis.type.Alias;

@Alias("RListDTO")
public class RSpotDTO {

	int resell_rno;
	int memberno;
	String rafflename;
	String nickname;
	String username;
	String post;
	String addr1;
	String addr2;
	String phone;
	int spot;
	public RSpotDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public RSpotDTO(int resell_rno, int memberno, String rafflename, String nickname, String username, String post,
			String addr1, String addr2, String phone, int spot) {
		super();
		this.resell_rno = resell_rno;
		this.memberno = memberno;
		this.rafflename = rafflename;
		this.nickname = nickname;
		this.username = username;
		this.post = post;
		this.addr1 = addr1;
		this.addr2 = addr2;
		this.phone = phone;
		this.spot = spot;
	}
	@Override
	public String toString() {
		return "RListDTO [resell_rno=" + resell_rno + ", memberno=" + memberno + ", rafflename=" + rafflename
				+ ", nickname=" + nickname + ", username=" + username + ", post=" + post + ", addr1=" + addr1
				+ ", addr2=" + addr2 + ", phone=" + phone + ", spot=" + spot + "]";
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
	public String getRafflename() {
		return rafflename;
	}
	public void setRafflename(String rafflename) {
		this.rafflename = rafflename;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPost() {
		return post;
	}
	public void setPost(String post) {
		this.post = post;
	}
	public String getAddr1() {
		return addr1;
	}
	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}
	public String getAddr2() {
		return addr2;
	}
	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getSpot() {
		return spot;
	}
	public void setSpot(int spot) {
		this.spot = spot;
	}
	
}
