<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import = "java.util.ArrayList,java.util.Date" %>

<html>
   
   <head>
      <title>Page object in JSP</title>
   </head>
   
   <body>
   
   <h3> JSP - Implicit Objects [Page]</h3>
   
	<a href="https://www.tutorialspoint.com/jsp/jsp_implicit_objects.htm">For more details for JSP Implicit Objects [Page]</a>
 	<br><br>
   		<center>
   		<% 
			out.println("<table width = \"100%\" border = \"1\" align = \"center\">" +
					"<tr bgcolor = 'yellow'><th>Servlet Config Name</th><th>Servlet Config Value</th></tr>");
			out.println("<tr><td>"+ "Servlet Info" + "</td><td>" + this.getServletInfo()  + "</td></tr>");
			out.println("<tr><td colspan='2'>"+ "But the following code will generate error, because can not use page directly without casting:" 
			+ "<br>" 
			+ " page.getServletInfo(); "
			+ "</td></tr>");
			out.println("</table>");
	    %>
      </center>
   
   </body>
</html>