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
      <title>JSP - JSTL XML Formatting</title>
   </head>

   <body>
   
   	  <a href="https://www.tutorialspoint.com/jsp/jsp_xml_data.htm">JSP - JSTL XML Formatting</a>
 	  <br><br>	
   
      <h3>Books Info:</h3>
      <c:set var = "xmltext">
         <books>
            <book>
               <name>Padam History</name>
               <author>ZARA</author>
               <price>100</price>
            </book>
            
            <book>
               <name>Great Mistry</name>
               <author>NUHA</author>
               <price>2000</price>
            </book>
         </books>
      </c:set>
 
      <c:import url = "http://localhost:8080/JSPApp/style.xsl" var = "xslt"/>
      <x:transform xml = "${xmltext}" xslt = "${xslt}"/>
   </body>
</html>