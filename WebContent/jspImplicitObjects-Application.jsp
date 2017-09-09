<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import = "java.util.ArrayList,java.util.Date" %>

<html>
   
   <head>
      <title>Application object in JSP</title>
   </head>
   
   <body>
   
   <h3> JSP - Implicit Objects [application]</h3>
   
	<a href="https://www.tutorialspoint.com/jsp/jsp_implicit_objects.htm">For more details for JSP Implicit Objects [application]</a>
 	<br><br>
   		<center>
	      <%
	         Integer hitsCount = (Integer)application.getAttribute("hitCounter");
	         if( hitsCount == null || hitsCount == 0 ) {
	            /* First visit */
	            out.println("Welcome to my website!");
	            hitsCount = 1;
	         } else {
	            /* return visit */
	            out.println("Welcome back to my website!");
	            hitsCount += 1;
	         }
	         application.setAttribute("hitCounter", hitsCount);
	      %>
	      
	      <p>Total number of visits: <%= hitsCount%></p>
      </center>
   
   </body>
</html>