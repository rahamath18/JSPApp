<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<head><title>JSP - Directives</title></head>
   
   <body>
   
   	<a href="https://www.tutorialspoint.com/jsp/jsp_directives.htm">For more details for JSP Directives</a>
 	  
 	  <%@ page import = "java.util.ArrayList" %>  
 	  <jsp:directive.page import = "java.util.HashMap" />
 	  
 	  <%! 
 	  	ArrayList<String> aList = new ArrayList<String>(10);
 	  %>
 	  
 	  <% 
 	  	aList.add("apple"); 
 	 	aList.add("orange"); 
 	 	aList.add("banana"); 
 	  %>
 	 
 	  <br><br>
 	  <%-- print above collection object --%>
 	  <%= aList %>
 	  
 	  <%@ page errorPage = "/errorPage.jsp" %>
 	  <jsp:directive.page errorPage = "/errorPage.jsp"/>
 	  
   </body>
</html>