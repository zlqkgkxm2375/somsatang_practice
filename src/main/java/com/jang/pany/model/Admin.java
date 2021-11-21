package com.jang.pany.model;

import javax.validation.constraints.NotEmpty;

public class Admin {
	
	private int acode;
	@NotEmpty(message = "ID")
	private String aid;
	@NotEmpty(message = "PWD")
	private String apwd;
	@NotEmpty(message = "name")
	private String aname;
	@NotEmpty(message = "phone")
	private String aphone;
	@NotEmpty(message = "email")
	private String aemail;
	
	public int getAcode() {
		return acode;
	}
	public void setAcode(int acode) {
		this.acode = acode;
	}
	public String getAid() {
		return aid;
	}
	public void setAid(String aid) {
		this.aid = aid;
	}
	public String getApwd() {
		return apwd;
	}
	public void setApwd(String apwd) {
		this.apwd = apwd;
	}
	public String getAname() {
		return aname;
	}
	public void setAname(String aname) {
		this.aname = aname;
	}
	public String getAphone() {
		return aphone;
	}
	public void setAphone(String aphone) {
		this.aphone = aphone;
	}
	public String getAemail() {
		return aemail;
	}
	public void setAemail(String aemail) {
		this.aemail = aemail;
	}
	
}
