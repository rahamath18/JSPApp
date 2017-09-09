<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import = "java.util.ArrayList,java.util.Date" %>

<html>
   
   <head>
      <title>Auto Refresh Header Example</title>
   </head>
   
    <h3> JSP - Implicit Objects [response & out]</h3>
   
	<a href="https://www.tutorialspoint.com/jsp/jsp_implicit_objects.htm">For more details for JSP Implicit Objects [response & out]</a>
 	<br><br>
   
   <body>
      <center>
         <h2>Auto Refresh Header Example</h2>
         <%
            // Set refresh, autoload time as 5 seconds
            response.setIntHeader("Refresh", 5);
            
            out.println("Current Time is: " + new Date());
            out.println("<br><br>Random Number: " + Math.random());
         %>
      </center>
   
   </body>
</html>