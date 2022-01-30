package com.itvedant.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Customer {
	@Id
	private int cid;
	private String cname;
	private String phone;
	private String email;
	private String street;
	private String city;
	private String state;
	private int zipcode;
	private String book_Product;
	private String booking_date;
	private String supply_date;
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public int getZipcode() {
		return zipcode;
	}
	public void setZipcode(int zipcode) {
		this.zipcode = zipcode;
	}
	public String getBook_Product() {
		return book_Product;
	}
	public void setBook_Product(String book_Product) {
		this.book_Product = book_Product;
	}
	public String getBooking_date() {
		return booking_date;
	}
	public void setBooking_date(String booking_date) {
		this.booking_date = booking_date;
	}
	public String getSupply_date() {
		return supply_date;
	}
	public void setSupply_date(String supply_date) {
		this.supply_date = supply_date;
	}
	@Override
	public String toString() {
		return "Customer [cid=" + cid + ", cname=" + cname + ", phone=" + phone + ", email=" + email + ", street="
				+ street + ", city=" + city + ", state=" + state + ", zipcode=" + zipcode + ", book_Product="
				+ book_Product + ", booking_date=" + booking_date + ", supply_date=" + supply_date + "]";
	}
	

}
