package com.java.model;

public class Medicine {
	
	private int id ;
	private String medCode;
	private String medName;
	private String indication;
	private int qty;
	private String expDate;
	private int price;
	private String manufacturer;
	
	
	public Medicine(int id, String medCode, String medName, String indication, int qty, String expDate, int price,
			String manufacturer) {
		super();
		this.id = id;
		this.medCode = medCode;
		this.medName = medName;
		this.indication = indication;
		this.qty = qty;
		this.expDate = expDate;
		this.price = price;
		this.manufacturer = manufacturer;
	}
	
	
	
	
	public int getId() {
		return id;
	}
	public String getMedCode() {
		return medCode;
	}
	public String getMedName() {
		return medName;
	}
	public String getIndication() {
		return indication;
	}
	public int getQty() {
		return qty;
	}
	public String getExpDate() {
		return expDate;
	}
	public int getPrice() {
		return price;
	}
	public String getManufacturer() {
		return manufacturer;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setMedCode(String medCode) {
		this.medCode = medCode;
	}
	public void setMedName(String medName) {
		this.medName = medName;
	}
	public void setIndication(String indication) {
		this.indication = indication;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
	public void setExpDate(String expDate) {
		this.expDate = expDate;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}
	
	
	
	

}
