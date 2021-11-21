package com.jang.pany.model;

import javax.validation.constraints.NotEmpty;

public class Emp {
	
	private int ecode;
	@NotEmpty(message = "ID�� �Է��ϼ���")
	private String eid;
	@NotEmpty(message = "PWD�� �Է��ϼ���")
	private String epwd;
	@NotEmpty(message = "�̸��� �Է��ϼ���")
	private String ename;
	@NotEmpty(message = "��ȭ��ȣ�� �Է��ϼ���")
	private String ephone;
	@NotEmpty(message = "�̸����� �Է��ϼ���")
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
