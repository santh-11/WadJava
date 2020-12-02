package com.wadj;

import java.io.Serializable;

public class Signup implements Serializable {

	private String FirstName;
	private String LastName;
	private String UserName;
	private String Email;
	private String PassWord;
	private String Contactno;

	public String getFirstName() {
		return FirstName;
	}

	public void setFirstName(String firstName) {
		FirstName = firstName;
	}

	public String getLastName() {
		return LastName;
	}

	public void setLastName(String lastName) {
		LastName = lastName;
	}

	public String getUserName() {
		return UserName;
	}

	public void setUserName(String userName) {
		UserName = userName;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getPassWord() {
		return PassWord;
	}

	public void setPassWord(String passWord) {
		PassWord = passWord;
	}

	public String getContactno() {
		return Contactno;
	}

	public void setContactno(String contactno) {
		Contactno = contactno;
	}

	public Signup() {
		super();
	}

}
