
<%@page import="java.util.Random"%>
<table style="border:2px; border-style: solid; border-color:blue">
 <tr>
 	<td>AUTO REFRESH JSP PAGE by response.setIntHeader(..., ...)</td>
 </tr>
 <tr>
 	<td>
 		<%
			response.setIntHeader("Refresh", Integer.valueOf(request.getParameter("refreshTimeInterval")));
			out.println("<br>Crrent Time: " + new java.util.Date());
	 		out.println("<br>Random Int: " + new Random().nextInt());
		%>
 	</td>
 </tr>
</table>