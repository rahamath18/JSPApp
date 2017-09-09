<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<head><title>Hello World</title></head>
   
   <body>
      <a href="https://www.tutorialspoint.com/jsp/jsp_directives.htm">For more details for following JSP Examples</a>
      <p>1. JSP Scriptlet</p>
      <p>2. JSP Declarations</p>
      <p>3. JSP Expression</p>
      <p>4. JSP Comments</p>
      <p>5. IF...ELSE</p>
      <p>6. SWITCH...CASE</p>
      <p>7. FOR...LOOP</p>
      
      <%-- This is JSP Scriptlet example --%>
      <%
         out.println("Your IP address is " + request.getRemoteAddr());
     	 out.println("<br> syntax of JSP Scriptlet!");
      %>
      <jsp:scriptlet>
      	int i = 0;
      	out.println("i = " + i);
 	  </jsp:scriptlet>
 	  
 	  <%-- This is JSP Declaration example --%>
 	  <%! 
 	  	 int a = 100; 
 	 	 int b = 200; 
 	 	 java.util.List<Integer> aList = new java.util.ArrayList<Integer>();
 	  %>
 	  <jsp:declaration>
 	 	 int aa = 100; 
	 	 int bb = 200; 
	 	 java.util.List aList1 = new java.util.ArrayList(); 
	 	 public String getJSPTagName() {
	 		 return "JSP Declaration TAG";
	 	 }
	 	public java.util.Date getCurrTime() {
	 		 return new java.util.Date();
	 	 }
	  </jsp:declaration>
	  
	  
	  <%-- This is JSP Expression example --%>
	  <p id="currDate"> Current Date: <%= new java.util.Date() %> </p>
	  <jsp:expression>
	 	 "curr date : " + new java.util.Date()
	  </jsp:expression>
	  <p id="currDate"> Current Date123: <%= getCurrTime() %> </p>
	  
	  
	  <%-- This is if...else example --%>
	  <p>IF...ELSE Example</p>
      <p> Today is weekend???</p>
      <%! int dayOfWeek = 0; %>
      <% if (dayOfWeek == 0 | dayOfWeek == 6) { %>
         <p> Today is weekend</p>
      <% } else { %>
         <p> Today is not weekend</p>
      <% } %>
      
	  
	  <%-- This is switch...case example --%>
	  <p>SWITCH...CASE Example</p>
	   <%! 
	   		int day = 6; 
	   %>
	   <% 
         switch(day) {
            case 0:
               out.println("It\'s Sunday.");
               break;
            case 1:
               out.println("It\'s Monday.");
               break;
            case 2:
               out.println("It\'s Tuesday.");
               break;
            case 3:
               out.println("It\'s Wednesday.");
               break;
            case 4:
               out.println("It\'s Thursday.");
               break;
            case 5:
               out.println("It\'s Friday.");
               break;
            case 6:
                out.println("It\'s Saturday.");
                break;
            default:
               out.println("It's Saturday.");
         }
      %>
	  
	  
	  <%-- This is Loop Statements example --%>
	  <p>Loop Statements Example</p>
	  <%! int fontSize; %> 
	  <%for ( fontSize = 1; fontSize <= 3; fontSize++){ %>
         <font color = "red" size = "<%= fontSize %>">
            JSP Tutorial
      </font><br />
      <%}%>
 	  
   </body>
</html>