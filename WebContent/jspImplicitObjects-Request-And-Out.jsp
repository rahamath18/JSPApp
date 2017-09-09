<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<title> Title </title>

<body>

<h3> JSP - Implicit Objects [request & out]</h3>
   
	<a href="https://www.tutorialspoint.com/jsp/jsp_implicit_objects.htm">For more details for JSP Implicit Objects[request & out]</a>
 	<br><br>
 	
 	<jsp:directive.page import="java.util.Enumeration"/>
 	<%@ page import="java.util.ArrayList" %>
 	
	<%
		Enumeration headerNames = request.getHeaderNames();
		out.println("<table width = \"100%\" border = \"1\" align = \"center\">" +
		"<tr bgcolor = 'yellow'><th>Request Header Name</th><th>Request Header Value</th></tr>");
		while(headerNames.hasMoreElements()) {
		   String paramName = (String)headerNames.nextElement();
		   String paramValue = request.getHeader(paramName);
		   out.println("<tr><td>"+ paramName + "</td><td>" + paramValue + "</td></tr>");
		}
		out.println("</table>");
	%>

</body>

</html>

