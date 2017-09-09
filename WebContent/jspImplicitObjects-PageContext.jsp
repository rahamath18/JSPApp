<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import = "java.util.ArrayList,java.util.Date" %>

<html>
   
   <head>
      <title>PageContext object in JSP</title>
   </head>
   
   <body>
   
   <h3> JSP - Implicit Objects [PageContext]</h3>
   
	<a href="https://www.tutorialspoint.com/jsp/jsp_implicit_objects.htm">For more details for JSP Implicit Objects [PageContext]</a>
 	<br><br>
   		<center>
   		<% 
   			// lot of interview qns are here

   			// PAGE_SCOPE, REQUEST_SCOPE, SESSION_SCOPE, and APPLICATION_SCOPE
	   		request.setAttribute("r_fruit", "apple");
	   		session.setAttribute("s_fruit", "orange");
			application.setAttribute("a_fruit", "banana");
			pageContext.setAttribute("pc_fruit", "mango");

	   		out.println("<br>" + "request value: " + request.getAttribute("r_fruit"));
	   		out.println("<br>" + "session value: " + session.getAttribute("s_fruit"));
	   		out.println("<br>" + "application value: " + application.getAttribute("a_fruit"));
	   		out.println("<br>" + "pageContext value: " + pageContext.getAttribute("pc_fruit"));
	
	   		out.println("<br>");
	   		
	   		request.setAttribute("fruit", "apple");
	   		session.setAttribute("fruit", "orange");
			application.setAttribute("fruit", "banana");
			pageContext.setAttribute("fruit", "mango");

			out.println("<br>" + "request value: " + request.getAttribute("fruit"));
	   		out.println("<br>" + "session value: " + session.getAttribute("fruit"));
	   		out.println("<br>" + "application value: " + application.getAttribute("fruit"));
	   		out.println("<br>" + "pageContext value: " + pageContext.getAttribute("fruit"));
	   		
			out.println("<br>");
	   		
	   		request.setAttribute("f", "apple");
	   		session.setAttribute("f", "orange");
			application.setAttribute("f", "banana");
			//pageContext.setAttribute("f", "mango");

			out.println("<br>" + "request value: " + request.getAttribute("f"));
	   		out.println("<br>" + "session value: " + session.getAttribute("f"));
	   		out.println("<br>" + "application value: " + application.getAttribute("f"));
	   		out.println("<br>" + "pageContext value: " + pageContext.getAttribute("f")); // null
	   		
	   		out.println("<br>" + "pageContext value in PAGE_SCOPE: " + pageContext.getAttribute("f", PageContext.PAGE_SCOPE)); // null
	   		out.println("<br>" + "pageContext value in REQUEST_SCOPE: " + pageContext.getAttribute("f", PageContext.REQUEST_SCOPE)); // apple
	   		out.println("<br>" + "pageContext value in SESSION_SCOPE: " + pageContext.getAttribute("f", PageContext.SESSION_SCOPE)); // orange
	   		out.println("<br>" + "pageContext value in APPLICATION_SCOPE: " + pageContext.getAttribute("f", PageContext.APPLICATION_SCOPE)); // banana
	   		
	   		out.println("<br>");
	   		
	   		out.println("<br>[[ In default pageContext looks the attr name in page object if not aval in pagecontext object ]]");
	   		pageContext.setAttribute("fffd", "nofruit", PageContext.PAGE_SCOPE);
	   		pageContext.setAttribute("fffd", "apple", PageContext.REQUEST_SCOPE);
	   		pageContext.setAttribute("fffd", "orange", PageContext.SESSION_SCOPE);
	   		pageContext.setAttribute("fffd", "banana", PageContext.APPLICATION_SCOPE);
	   		
	   		out.println("<br>" + "pageContext value: " + pageContext.getAttribute("fffd")); // nofruit
	   		out.println("<br>" + "pageContext value: " + pageContext.getAttribute("fffd", PageContext.PAGE_SCOPE)); // nofruit
	   		pageContext.setAttribute("fffd", "nofruit-nofruit");
	   		out.println("<br>" + "pageContext value: " + pageContext.getAttribute("fffd")); // nofruit-nofruit
	   		out.println("<br>" + "pageContext value: " + pageContext.getAttribute("fffd", PageContext.PAGE_SCOPE)); // nofruit-nofruit
	   		
	   		out.println("<br>" + "request value: " + request.getAttribute("fffd")); // apple
	   		out.println("<br>" + "pageContext value: " + pageContext.getAttribute("fffd", PageContext.REQUEST_SCOPE)); // apple
	   		
	   		out.println("<br>" + "session value: " + session.getAttribute("fffd")); // orange
	   		out.println("<br>" + "pageContext value: " + pageContext.getAttribute("fffd", PageContext.SESSION_SCOPE)); // orange
	   		
	   		out.println("<br>" + "application value: " + application.getAttribute("fffd")); // banana
	   		out.println("<br>" + "pageContext value: " + pageContext.getAttribute("fffd", PageContext.APPLICATION_SCOPE)); // banana

	    %>
      </center>
   
   </body>
</html>