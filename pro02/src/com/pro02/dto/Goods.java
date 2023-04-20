package com.pro02.dto;

public class Goods {
	private String gcode;
	private String gname;
	private String gram;
	private int price;
	private String mung;
	private int amount = 1;
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
	@Override
	public String toString() {
		return "Goods [gcode=" + gcode + ", gname=" + gname + ", gram=" + gram
				+ ", price=" + price + ", mung=" + mung + ", amount=" + amount
				+ "]";
	}
}
