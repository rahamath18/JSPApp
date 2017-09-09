<%@ page import = "java.io.*,java.util.*" %>

<html>
   <head>
      <title>JSP Page - Send Redirect</title>
   </head>
   
   <body>
   
      <a href="https://www.tutorialspoint.com/jsp/jsp_page_redirect.htm">For more details for JSP Page - Send Redirect</a>
   
      <center>
         <h1>JSP Page - Send Redirect</h1>
      </center>
      <%
         // New location to be redirected
         
		 response.sendRedirect(request.getContextPath() + "/jspLogin.jsp");
		 
         // following sendRedirect also works fine
    	 // String site = new String("http://www.google.com");	  
    	 // response.sendRedirect(site);

      %>
   </body>
</html>