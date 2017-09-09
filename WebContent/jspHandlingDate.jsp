<%@ page import = "java.io.*,java.util.*" %>
<%@ page import = "javax.servlet.*,java.text.*" %>

<html>
   <head>
      <title>Display Current Date & Time</title>
      <style>
      	.hbgcolor {
      		background-color: rgb(238, 238, 255);
      	};
      </style>
   </head>
   
   <body>
   
   		 <a href="https://www.tutorialspoint.com/jsp/jsp_handling_date.htm">For more details for JSP - Handling Date</a>
   		
         <h4 class="hbgcolor">Display Current Date & Time</h4>
      
      <%
         Date date = new Date();
         out.print( "<h5>" +date.toString()+"</h5>");
      %>
      
         <h4 class="hbgcolor">Display Current Date & Time (E yyyy.MM.dd 'at' hh:mm:ss a zzz)</h4>
      <%
         Date dNow = new Date( );
         SimpleDateFormat ft = new SimpleDateFormat ("E yyyy.MM.dd 'at' hh:mm:ss a zzz");
         out.print( "<h5>" + ft.format(dNow) + "</h5>");
      %>
      
   </body>
</html>