package com.wadj;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SignupValid
 */
@WebServlet("/SignupValid")
public class SignupValid extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String FirstName = request.getParameter("firstname");
		String LastName = request.getParameter("secondname");
		String UserName = request.getParameter("username");
		String Email = request.getParameter("email");
		String PassWord = request.getParameter("pass");
		String Contactno = request.getParameter("phone");
		String pass = request.getParameter("password");
		PrintWriter out = response.getWriter();

		if (FirstName.length() == 0 || LastName.length() == 0 || UserName.length() == 0 || Email.length() == 0
				|| PassWord.length() == 0 || Contactno.length() == 0 || (PassWord.length() == 0)
				|| (Contactno.length() != 10) || (PassWord.length() < 8) || !(PassWord.equals(pass)))

		{
			response.sendRedirect("signup.jsp");

		} else {

			Signup obj = new Signup();
			obj.setFirstName(FirstName);
			obj.setLastName(LastName);
			obj.setUserName(UserName);
			obj.setEmail(Email);
			obj.setPassWord(PassWord);
			obj.setContactno(Contactno);

			if (SignDao.Signup(obj)) {
				response.sendRedirect("index.jsp");
			} else {
				out.println("there is error while inserting ):");
			}

		}
	}
}
