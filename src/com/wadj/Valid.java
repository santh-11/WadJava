package com.wadj;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Valid
 */
@WebServlet("/Valid")
public class Valid extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

		/*
		 * String name="santh";
		 * 
		 * login l=new login(name,"asdad");
		 * 
		 * request.setAttribute("login",l); RequestDispatcher
		 * rq=request.getRequestDispatcher("valid.jsp"); rq.forward(request, response);
		 */
		LoginBean login = new LoginBean();
		String username = request.getParameter("name");
		String password = request.getParameter("password");
		login.setName(username);
		login.setPassword(password);
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();

		try {
			if (LoginDao.check(login)) {

				session.setAttribute("welcome", username);
				// response.sendRedirect(".jsp");
				response.sendRedirect("Welcome.jsp");
			}

			else {
				out.println("<script>");
				out.println("window.alert('Incorrect password !')");
				out.println("</script>");
			}

		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		doGet(request, response);
	}
}
