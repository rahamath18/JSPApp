<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix = "ex" uri = "WEB-INF/custom.tld"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
   <head>
      <title>A sample custom tag</title>
   </head>

   <body>
   
   	  <a href="https://www.tutorialspoint.com/jsp/jsp_custom_tags.htm">JSP - Custom Tags</a>
 	  <br><br>	
   
      <ex:Hello/>
      
      <br><br>
      
      <ex:HelloAttr message="Hi I am from JSP!"/>
      
      <br><br>
      
      <ex:Today/>
      
   </body>
</html>