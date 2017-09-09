

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
   <head>
      <title>JSP - Expression Language (EL)</title>
   </head>

   <body>
   
   	  <a href="https://www.tutorialspoint.com/jsp/jsp_expression_language.htm">JSP - Expression Language (EL)</a>
 	  <br><br>	
 	  
 	  <jsp:text>
 	  	I am a JSP Expression Language!
 	  </jsp:text>
 	  
 	  <br><br>
      
      <jsp:text>
	   Box Perimeter is: ${2*box.width + 2*box.height}
	  </jsp:text>
	  
	   <br><br>
	   
	  <div align = "center">
         <p>${header["user-agent"]}</p>
      </div>
      
      <div align = "center">
         <p>${request.getServletContext().getContextPath()}</p>
      </div>
      
   </body>
</html>