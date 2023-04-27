package com.pro02.dto;

import java.util.Date;

public class Pay {
	private String pcode;
	private String id;
	private String ocode;
	private String p_sd;
	private String p_bun;
	private int price;
	private String pdate;
	public Pay(){
		Date now = new Date();
		this.pdate = now.toString();
	}
	public String getPcode() {
		return pcode;
	}

	public void setPcode(String pcode) {
		this.pcode = pcode;
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

	public String getP_sd() {
		return p_sd;
	}

	public void setP_sd(String p_sd) {
		this.p_sd = p_sd;
	}

	public String getP_bun() {
		return p_bun;
	}

	public void setP_bun(String p_bun) {
		this.p_bun = p_bun;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getPdate() {
		return pdate;
	}

	public void setPdate(String pdate) {
		this.pdate = pdate;
	}
}
