<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import = "java.util.ArrayList,java.util.Date" %>

<html>
   
   <head>
      <title>Config object in JSP</title>
   </head>
   
   <body>
   
   <h3> JSP - Implicit Objects [Config]</h3>
   
	<a href="https://www.tutorialspoint.com/jsp/jsp_implicit_objects.htm">For more details for JSP Implicit Objects [Config]</a>
 	<br><br>
 	<p>Following details configured in web.xml for this jsp page. Refer web.xml.</p>
   		<center>
   		<% 
			out.println("<table width = \"100%\" border = \"1\" align = \"center\">" +
					"<tr bgcolor = 'yellow'><th>Servlet Config Name</th><th>Servlet Config Value</th></tr>");
			out.println("<tr><td>"+ "Servlet Context" + "</td><td>" + config.getServletContext().getServletContextName()  + "</td></tr>");
			out.println("<tr><td>"+ "Servlet Name" + "</td><td>" + config.getServletName() + "</td></tr>");
			out.println("<tr><td>"+ "Driver" + "</td><td>" + config.getInitParameter("driver") + "</td></tr>");
			out.println("<tr><td>"+ "User Name" + "</td><td>" + config.getInitParameter("user-name") + "</td></tr>");
			out.println("<tr><td>"+ "Password" + "</td><td>" + config.getInitParameter("password") + "</td></tr>");
			out.println("</table>");
	    %>
      </center>
   
   </body>
</html>