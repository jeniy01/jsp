package com.pro02.dto;

public class Goods {
	private String gcode;
	private String gname;
	private String gram;
	private int price;
	private String mung;
	private int amount = 1;
	private String pic1;
	private String pic2;
	private String pic3;
	public String getGcode() {
		return gcode;
	}
	public void setGcode(String gcode) {
		this.gcode = gcode;
	}
	public String getGname() {
		return gname;
	}
	public void setGname(String gname) {
		this.gname = gname;
	}
	public String getGram() {
		return gram;
	}
	public void setGram(String gram) {
		this.gram = gram;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getMung() {
		return mung;
	}
	public void setMung(String mung) {
		this.mung = mung;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public String getPic1() {
		return pic1;
	}
	public void setPic1(String pic1) {
		this.pic1 = pic1;
	}
	public String getPic2() {
		return pic2;
	}
	public void setPic2(String pic2) {
		this.pic2 = pic2;
	}
	public String getPic3() {
		return pic3;
	}
	public void setPic3(String pic3) {
		this.pic3 = pic3;
	}
}
