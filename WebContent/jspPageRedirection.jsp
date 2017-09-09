<%@ page import = "java.io.*,java.util.*" %>

<html>
   <head>
      <title>JSP Page - Redirection</title>
   </head>
   
   <body>
   
      <a href="https://www.tutorialspoint.com/jsp/jsp_page_redirect.htm">For more details for JSP Page - Redirection</a>
   
      <center>
         <h1>JSP Page - Redirection</h1>
      </center>
      <%
         // New location to be redirected
         String site = new String("http://www.google.com");
         response.setStatus(response.SC_MOVED_TEMPORARILY);
         response.setHeader("Location", site); 
      %>
   </body>
</html>