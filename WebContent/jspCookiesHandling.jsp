<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import = "java.util.ArrayList,java.util.Date" %>
 

<html>
   
   <head>
      <title>JSP - Cookies Handling</title>
   </head>
   
    <h3> JSP - Cookies Handling</h3>
   
	<a href="https://www.tutorialspoint.com/jsp/jsp_cookies_handling.htm">For more details for JSP Cookies Handling</a>
 	<br><br>
   
   <body>
   
     <form action = "jspCookiesHandling.jsp" method = "POST">
         First Name: <input type = "text" name = "first_name">
         <br />
         Last Name: <input type = "text" name = "last_name" />
         <br />
         <input type = "checkbox" name = "maths" checked = "checked" /> Maths
         <input type = "checkbox" name = "physics"  /> Physics
         <input type = "checkbox" name = "chemistry" checked = "checked" /> Chemistry
         <br />
         <input type = "submit" value = "Submit" />
      </form>
      
      <h1>Using GET Method to Read Form Data</h1>
      <% 
      if(request.getParameter("first_name") != null) {
      %>
	      <ul>
	         <li><p><b>First Name:</b>
	            <%= request.getParameter("first_name")%>
	         </p></li>
	         <li><p><b>Last  Name:</b>
	            <%= request.getParameter("last_name")%>
	         </p></li>
	         <li><p><b>Maths Flag:</b>
	            <%= request.getParameter("maths")%>
	         </p></li>
	         <li><p><b>Physics Flag:</b>
	            <%= request.getParameter("physics")%>
	         </p></li>
	         <li><p><b>Chemistry Flag:</b>
	            <%= request.getParameter("chemistry")%>
	         </p></li>
	      </ul>
      <% 
      }
	      // Create cookies for first and last names.      
	      Cookie firstName = new Cookie("first_name", request.getParameter("first_name"));
	      Cookie lastName = new Cookie("last_name", request.getParameter("last_name"));
	      
	      // Set expiry date after 24 Hrs for both the cookies.
	      firstName.setMaxAge(60*60*24); 
	      lastName.setMaxAge(60*60*24); 
	      
	      // Add both the cookies in the response header.
	      response.addCookie( firstName );
	      response.addCookie( lastName );
     
      
      %>
      
      <h2>HTTP Cookies Handling</h2>
      
      <% 
      
      if(request.getCookies() != null) {
      
      %>
         <table width = "100%" border = "1" align = "center">
            <tr bgcolor = "#949494">
               <th>Cookie Name</th>
               <th>Cookie Value(s)</th>
            </tr>
            <%
	            Cookie cookie = null;
	            Cookie[] cookies = null;
	            
	            // Get an array of Cookies associated with the this domain
	            cookies = request.getCookies();
	            
	            for (int i = 0; i < cookies.length; i++) {
	                 cookie = cookies[i];
	                 out.print("<tr><td>" + cookie.getName( ) + "</td>\n");
	                 out.println("<td> " + cookie.getValue( ) + "</td></tr>\n");
	            }
            %>
         </table>
      <% } %>
      
   </body>
</html>