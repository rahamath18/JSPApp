package com.test.jsp;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Date;
import java.util.Enumeration;
import java.util.Map;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	@Override
	public void init() throws ServletException {
		super.init();
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Date date = new Date();
		System.out.println("LoginServlet|doGet....." + date);

	   // Set response content type
	   //response.setContentType("text/html");
	   //PrintWriter out = response.getWriter();
	   //String title = "Login Details";
	   
	   Boolean loginStatus = (Boolean) request.getSession().getAttribute("AUTHENTICATION_STATUS");
	   System.out.println("LoginServlet|doGet.....AUTHENTICATION_STATUS=" + loginStatus);

	   //boolean loginSt = Boolean.valueOf(loginStatus);
	   if(loginStatus) {
		   // forward
		   RequestDispatcher rd = request.getRequestDispatcher("/loginSuccess.jsp"); // refer web.xml
		   rd.forward(request, response);
	   } else {
		   //send redirect
			response.sendRedirect(request.getContextPath() + "/loginFailed.jsp");  // refer web.xml
			// http code 302 is used before go to above failed jsp page
	   }
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("LoginServlet|doPost.....");

		doGet(request, response);
	}
	
	@Override
	public void destroy() {
		super.destroy();
	}
}
