<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<head><title>JSP - ABCD Web Application</title></head>
   
   <body>
   
   	  <p style="font-size:25px; color:green;">Your login is successful! <br><br>
   	  
   	  <%
 	  	// display the main application page here
   	  	out.println("AUTHENTICATION_STATUS:" + session.getAttribute("AUTHENTICATION_STATUS"));
   	  %>
 	  </p>
 	  
   </body>
</html>