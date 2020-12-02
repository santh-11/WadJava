package com.wadj;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class LoginDao {

	public static boolean check(LoginBean obj) throws ClassNotFoundException, SQLException {
		Connection con = null;
		Statement s = null;
		ResultSet rs = null;
		String passu = null;
		String username = obj.getName();
		String password = obj.getPassword();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/user", "dsac", "helloworld");

			PreparedStatement p = con.prepareStatement("select Password from UserDetails where UserName= ?");

			String user = obj.getName();
			p.setString(1, user);

			rs = p.executeQuery();
			while (rs.next()) {
				passu = rs.getString(1);
			}
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (password.equals(passu)) {
			return true;
		} else {
			return false;
		}

	}
}
