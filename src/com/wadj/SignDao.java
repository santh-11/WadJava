package com.wadj;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class SignDao {

	public static boolean Signup(Signup obj) {
		Connection con = null;
		Statement s = null;
		ResultSet rs = null;
		int i = 0;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/user", "dsac", "helloworld");

			PreparedStatement p = con.prepareStatement(
					"insert into UserDetails(FirstName,LastName,UserName,Email,Password,PhoneNumber)values(?,?,?,?,?,?)");
			String FirstName = obj.getFirstName();
			String LastName = obj.getLastName();
			String UserName = obj.getUserName();
			String Email = obj.getEmail();
			String PassWord = obj.getPassWord();
			String Contactno = obj.getContactno();

			p.setString(1, FirstName);
			p.setString(2, LastName);
			p.setString(3, UserName);
			p.setString(4, Email);
			p.setString(5, PassWord);
			p.setString(6, Contactno);

			i = p.executeUpdate();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (i > 0) {
			return true;
		} else {

			return false;
		}
	}
}
