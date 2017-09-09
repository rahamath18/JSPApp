<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>

<%@ taglib prefix = "c" 	uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" 	uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix = "sql" 	uri = "http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix = "x" 	uri = "http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix = "fn" 	uri = "http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
   <head>
      <title>JSP - JSTL XML Processing</title>
   </head>

   <body>
   
   	  <a href="https://www.tutorialspoint.com/jsp/jsp_xml_data.htm">JSP - JSTL XML Processing</a>
 	  <br><br>	
   
      <h3>Books Info:</h3>
      <c:import var = "bookInfo" url="http://localhost:8080/JSPApp/books.xml"/>
 
      <x:parse xml = "${bookInfo}" var = "output"/>
      
      <b>The title of the first book is</b>: 
      <x:out select = "$output/books/book[1]/name" />
      <br>
      
      <b>The price of the first book</b>: 
      <x:out select = "$output/books/book[1]/price" />
      <br>
      
      <b>The name of the second book</b>: 
      <x:out select = "$output/books/book[2]/name" />
      <br>
      
      <b>The price of the second book</b>: 
      <x:out select = "$output/books/book[2]/price" />
   </body>
</html>