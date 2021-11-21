package com.jang.pany.model;

import javax.validation.constraints.NotEmpty;

public class Emp {
	
	private int ecode;
	@NotEmpty(message = "ID를 입력하세요")
	private String eid;
	@NotEmpty(message = "PWD를 입력하세요")
	private String epwd;
	@NotEmpty(message = "이름을 입력하세요")
	private String ename;
	@NotEmpty(message = "전화번호를 입력하세요")
	private String ephone;
	@NotEmpty(message = "이메일을 입력하세요")
	private String eemail;

	private String eacode;
	
	public int getEcode() {
		return ecode;
	}
	public void setEcode(int ecode) {
		this.ecode = ecode;
	}
	public String getEid() {
		return eid;
	}
	public void setEid(String eid) {
		this.eid = eid;
	}
	public String getEpwd() {
		return epwd;
	}
	public void setEpwd(String epwd) {
		this.epwd = epwd;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public String getEphone() {
		return ephone;
	}
	public void setEphone(String ephone) {
		this.ephone = ephone;
	}
	public String getEemail() {
		return eemail;
	}
	public void setEemail(String eemail) {
		this.eemail = eemail;
	}
	public String getEacode() {
		return eacode;
	}
	public void setEacode(String eacode) {
		this.eacode = eacode;
	}



}
