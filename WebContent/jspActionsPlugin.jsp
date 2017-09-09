<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<title> Plugin example </title>

<body bgcolor="white">

<h3> The given below applet is imported to this file : </h3>
   
   	  <a href="https://www.tutorialspoint.com/jsp/jsp_actions.htm">For more details for JSP Actions Plugin</a>
 	  
	  <jsp:plugin type="applet" code="com.test.jsp.MyApplet.class" codebase="applet"

 height="300" width="300">

<jsp:fallback>

Plugin tag not supported by browser.

</jsp:fallback>

</jsp:plugin>

<h4><font color=red>

The above applet is loaded using the Java Plugin from a jsp page using the

plugin tag.

</font>

</h4>

</body>

</html>

