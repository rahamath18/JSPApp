<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<head><title>JSP - Actions</title></head>
   
   <body>
   
   	  <a href="https://www.tutorialspoint.com/jsp/jsp_actions.htm">For more details for JSP Actions - UseBean, Set & Get</a>
 	  
 	  <br><br>JSP Action UseBean, Set & Get out/put 
 	  
 	  <jsp:useBean id="emp" class="com.test.jsp.Employee" scope="page"/>
 	  
	  <jsp:setProperty name="emp" property="id" value="1001"/>
	  <jsp:setProperty name="emp" property="name" value="Rahamathullah S	"/>
	  
	  <p>Following information by jsp useBean and it's set/get methods</p>		  
	  <p>Emp Id: <jsp:getProperty name="emp" property="id" /></p>
	  <p>Emp Name: <jsp:getProperty name="emp" property="name" /></p>
	  
   </body>
</html>
