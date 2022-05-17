package com.dto;

import org.apache.ibatis.type.Alias;

@Alias("RwinDTO")
public class RwinDTO {

	int resell_rno;
	String username;
	String post;
	String addr1;
	String addr2;
	String phone;
	public RwinDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public RwinDTO(int resell_rno, String username, String post, String addr1, String addr2,
			String phone) {
		super();
		this.resell_rno = resell_rno;
		this.username = username;
		this.post = post;
		this.addr1 = addr1;
		this.addr2 = addr2;
		this.phone = phone;
	}
	@Override
	public String toString() {
		return "RwinDTO [resell_rno=" + resell_rno +  ", username=" + username + ", post="
				+ post + ", addr1=" + addr1 + ", addr2=" + addr2 + ", phone=" + phone + "]";
	}
	public int getResell_rno() {
		return resell_rno;
	}
	public void setResell_rno(int resell_rno) {
		this.resell_rno = resell_rno;
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
	
}
