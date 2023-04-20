package com.pro02.dto;

import java.util.Date;

public class Review {
	private String rcode;
	private String id;
	private String ocode;
	private String rdate;
	private String hg;
	private String str;
	
	public Review(){
		Date now = new Date();
		this.rdate = now.toString();
	}

	public String getRcode() {
		return rcode;
	}

	public void setRcode(String rcode) {
		this.rcode = rcode;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getOcode() {
		return ocode;
	}

	public void setOcode(String ocode) {
		this.ocode = ocode;
	}

	public String getRdate() {
		return rdate;
	}

	public void setRdate(String rdate) {
		this.rdate = rdate;
	}

	public String getHg() {
		return hg;
	}

	public void setHg(String hg) {
		this.hg = hg;
	}

	public String getStr() {
		return str;
	}

	public void setStr(String str) {
		this.str = str;
	}

	@Override
	public String toString() {
		return "Review [rcode=" + rcode + ", id=" + id + ", ocode=" + ocode
				+ ", rdate=" + rdate + ", hg=" + hg + ", str=" + str + "]";
	}
}
