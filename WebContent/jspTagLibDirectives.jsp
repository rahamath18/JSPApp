<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix = "c" 	uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" 	uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix = "sql" 	uri = "http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix = "x" 	uri = "http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix = "fn" 	uri = "http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<head><title>JSP - Standard Tag Library (JSTL)</title></head>
   
   <body>
   
   	  <a href="https://www.tutorialspoint.com/jsp/jsp_standard_tag_library.htm">JSP - Standard Tag Library (JSTL) Tutorial</a>
 	  <p>
 	  	<c:out value="I am from core TAG TLD"></c:out>
 	  </p>
 	  <p>
 	  	<c:out value="<%= new java.util.Date() %>"></c:out>
 	  </p>
 	  
   </body>
</html>