<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>

<%@ taglib prefix = "c" 	uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" 	uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix = "sql" 	uri = "http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix = "x" 	uri = "http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix = "fn" 	uri = "http://java.sun.com/jsp/jstl/functions" %>

<%

// /JSPApp/WebContent/WEB-INF/lib/commons-fileupload-1.3.3.jar
// /JSPApp/WebContent/WEB-INF/lib/commons-io-2.5.jar
// /JSPApp/WebContent/WEB-INF/lib/jstl-1.2.jar
// /JSPApp/WebContent/WEB-INF/lib/mail-1.4.7.jar
// /JSPApp/WebContent/WEB-INF/lib/mysql-connector-java-5.1.6.jar
// /JSPApp/WebContent/WEB-INF/lib/serializer-2.7.2.jar
// /JSPApp/WebContent/WEB-INF/lib/taglibs-standard-impl-1.2.5.jar
// /JSPApp/WebContent/WEB-INF/lib/xalan-2.7.2.jar
// /JSPApp/WebContent/WEB-INF/lib/Xerces-J-bin.2.11.0.zip

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<head><title>JSP - JSTL Database Access</title></head>
   
   <body>
   
   	  <a href="https://www.tutorialspoint.com/jsp/jsp_database_access.htm">JSP - JSTL Database Access</a>
 	  <br><br>	
	 <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost/servletdb"
         user = "root"  password = "password"/>
 
      <sql:query dataSource = "${snapshot}" var = "result">
         SELECT * from Employee;
      </sql:query>
 
      <table border = "1" width = "60%">
         <tr>
            <th>Emp ID</th>
            <th>First Name</th>
            <th>Salary</th>
         </tr>
         
         <c:forEach var = "row" items = "${result.rows}">
            <tr>
               <td><c:out value = "${row.id}"/></td>
               <td><c:out value = "${row.empName}"/></td>
               <td><c:out value = "${row.salary}"/></td>
            </tr>
         </c:forEach>
      </table>
 	  
   </body>
</html>