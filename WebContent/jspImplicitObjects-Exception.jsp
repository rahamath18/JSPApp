<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import = "java.util.ArrayList,java.util.Date" %>
<%@ page errorPage = "ShowError.jsp" %>

<html>
   
   <head>
      <title>Error Handling Example</title>
   </head>
   
   <body>
   
   <h3> JSP - Implicit Objects [Exception]</h3>
   
	<a href="https://www.tutorialspoint.com/jsp/jsp_implicit_objects.htm">For more details for JSP Implicit Objects [Exception]</a>
 	<br><br>
 	<%
         // Throw an exception to invoke the error page
         int x = 1;
         
         if (x == 1) {
            throw new RuntimeException("Error condition!!!");
         }
      %>
      
      <%
         try {
            new Integer("sdasasd");
         }
         catch (Exception e) {
            out.println("An exception occurred: " + e.getMessage());
         }
      %>
      
   </body>
</html>