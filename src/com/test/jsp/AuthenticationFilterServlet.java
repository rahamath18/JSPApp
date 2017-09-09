package com.test.jsp;

import java.util.Date;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

//Implements Filter class
public class AuthenticationFilterServlet implements Filter {
	
	public void init(FilterConfig config) throws ServletException {
		// Get init parameter
		String testParam = config.getInitParameter("test-param");

		// Print the init parameter
		System.out.println("Test Param: " + testParam);
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws java.io.IOException, ServletException {

		System.out.println("AuthenticationFilterServlet|doFilter...");
		// Get the IP address of client machine.
		// Log the IP address and current timestamp.
		System.out.println("IP " + request.getRemoteAddr() + ", Time " + new Date().toString());

		String loginId = request.getParameter("loginId");
		String password = request.getParameter("password");
		System.out.println("Login Id " + loginId + ", Password " + password);
		HttpServletRequest requestTemp = (HttpServletRequest) request;
		HttpSession session = requestTemp.getSession();
		try {
			
			if(loginId.equals("rahamath") && password.equals("password"))
				session.setAttribute("AUTHENTICATION_STATUS", true);
			else {
				session.setAttribute("AUTHENTICATION_STATUS", false);
			}
		} catch (Exception e) {
			session.setAttribute("AUTHENTICATION_STATUS", false);
		}
		// Pass request back down the filter chain
		chain.doFilter(request, response);
	}

	public void destroy() {
		/*
		 * Called before the Filter instance is removed from service by the web
		 * container
		 */
	}
}
