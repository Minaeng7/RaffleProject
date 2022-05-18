package com.dto;

import org.apache.ibatis.type.Alias;

@Alias("SwinDTO")
public class SwinDTO {
	
	int sell_rno;
	String username;
	String post;
	String addr1;
	String addr2;
	String phone;
	int memberno;
	public SwinDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public SwinDTO(int sell_rno, String username, String post, String addr1, String addr2, String phone, int memberno) {
		super();
		this.sell_rno = sell_rno;
		this.username = username;
		this.post = post;
		this.addr1 = addr1;
		this.addr2 = addr2;
		this.phone = phone;
		this.memberno = memberno;
	}
	public int getSell_rno() {
		return sell_rno;
	}
	public void setSell_rno(int sell_rno) {
		this.sell_rno = sell_rno;
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
	public int getMemberno() {
		return memberno;
	}
	public void setMemberno(int memberno) {
		this.memberno = memberno;
	}
	@Override
	public String toString() {
		return "SwinDTO [sell_rno=" + sell_rno + ", username=" + username + ", post=" + post + ", addr1=" + addr1
				+ ", addr2=" + addr2 + ", phone=" + phone + ", memberno=" + memberno + "]";
	}
	
	
}

