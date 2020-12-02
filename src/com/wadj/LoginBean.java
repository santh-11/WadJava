package com.wadj;

import java.io.Serializable;

public class LoginBean implements Serializable {

	private String name;
	private String Password;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}

	public LoginBean() {
		super();
	}

	@Override
	public String toString() {
		return "login [name=" + name + ", Password=" + Password + "]";
	}

}
