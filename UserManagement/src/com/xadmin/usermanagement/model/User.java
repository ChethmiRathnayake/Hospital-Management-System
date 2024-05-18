package com.xadmin.usermanagement.model;


public class User {
	protected int id;
	protected String name;
	protected String dob;
	protected String gender;
	protected String admissionDate;
	protected String roomNo;
	
	public User() {
	}

	public User(String name, String dob, String gender, String admissionDate, String roomNo) {
		super();
		this.name = name;
		this.dob = dob;
		this.gender = gender;
		this.admissionDate = admissionDate;
		this.roomNo = roomNo;
	}

	public User(int id, String name, String dob, String gender, String admissionDate, String roomNo) {
		super();
		this.id = id;
		this.name = name;
		this.dob = dob;
		this.gender = gender;
		this.admissionDate = admissionDate;
		this.roomNo = roomNo;
	}

	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getDob() {
		return dob;
	}

	public String getGender() {
		return gender;
	}

	public String getAdmissionDate() {
		return admissionDate;
	}

	public String getRoomNo() {
		return roomNo;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public void setAdmissionDate(String admissionDate) {
		this.admissionDate = admissionDate;
	}

	public void setRoomNo(String roomNo) {
		this.roomNo = roomNo;
	}
	
	
	
}