package com.dto;

import org.apache.ibatis.type.Alias;

@Alias("SSpotDTO")
public class SSpotDTO {

	int sell_rno;
	int memberno;
	String rafflename;
	String username;
	String post;
	String addr1;
	String addr2;
	String phone;
	String soption;
	public SSpotDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public SSpotDTO(int sell_rno, int memberno, String rafflename, String username, String post, String addr1,
			String addr2, String phone, String soption) {
		super();
		this.sell_rno = sell_rno;
		this.memberno = memberno;
		this.rafflename = rafflename;
		this.username = username;
		this.post = post;
		this.addr1 = addr1;
		this.addr2 = addr2;
		this.phone = phone;
		this.soption = soption;
	}
	@Override
	public String toString() {
		return "SSpotDTO [sell_rno=" + sell_rno + ", memberno=" + memberno + ", rafflename=" + rafflename
				+ ", username=" + username + ", post=" + post + ", addr1=" + addr1 + ", addr2=" + addr2 + ", phone="
				+ phone + ", soption=" + soption + "]";
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
	public String getRafflename() {
		return rafflename;
	}
	public void setRafflename(String rafflename) {
		this.rafflename = rafflename;
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
	public String getSoption() {
		return soption;
	}
	public void setSoption(String soption) {
		this.soption = soption;
	}
	
}