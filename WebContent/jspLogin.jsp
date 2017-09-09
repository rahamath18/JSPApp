<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import = "java.util.ArrayList,java.util.Date" %>
 

<html>
   
   <head>
      <title>JSP - Login Authentication Using Filters</title>
   </head>
   
    <h3> JSP - Form Processing</h3>
   
	<a href="https://www.tutorialspoint.com/jsp/jsp_writing_filters.htm">For more details for Login Authentication Using Filters</a>
 	<br><br>
   
   <body>
   
     <form action = "LoginServlet" method = "POST">
         Login Id: <input type = "text" name = "loginId">
         <br />
         Password: <input type = "password" name = "password" />
         <br />
         <input type = "submit" value = "Submit" />
      </form>
      
   </body>
</html>