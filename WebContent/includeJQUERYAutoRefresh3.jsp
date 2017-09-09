<%@page import="java.util.Random"%>

<table style="border:2px; border-style: solid; border-color:green">
<tr>
 	<td>AUTO REFRESH PAGE by JQUERY</td>
 </tr>
 <tr>
 	<td>
 		<%
	 		out.println("Random Int: " + new Random().nextInt() + "\n");
		%>
 	</td>
 </tr>
 </table>