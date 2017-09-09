<%@ page import = "java.io.*,java.util.*" %>

<html>
   <head>
      <title>JSP Auto Refresh</title>
   </head>
   
   <body>
   
      <a href="https://www.tutorialspoint.com/jsp/jsp_auto_refresh.htm">For more details for JSP Auto Refresh</a>
   
      <center>
         <h1>JSP Auto Refresh</h1>
      </center>
      
      <%
	      // Set refresh, autoload time as 5 seconds
	      response.setIntHeader("Refresh", 5);
	      
	      // Get current time
	      Calendar calendar = new GregorianCalendar();
	      String am_pm;
	      
	      int hour = calendar.get(Calendar.HOUR);
	      int minute = calendar.get(Calendar.MINUTE);
	      int second = calendar.get(Calendar.SECOND);
	      
	      if(calendar.get(Calendar.AM_PM) == 0)
	         am_pm = "AM";
	      else
	         am_pm = "PM";
	      String CT = hour+":"+ minute +":"+ second +" "+ am_pm;
	      out.println("Crrent Time: " + CT + "\n");

      %>
   </body>
</html>