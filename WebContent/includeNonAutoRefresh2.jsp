<%@page import="java.util.Random"%>

<table style="border:2px; border-style: solid; border-color:yellow">
<tr>
 	<td>NON AUTO REFRESH PAGE INCLUDED HERE</td>
 </tr>
 <tr>
 	<td>
 		<%
	 		out.println("Random Int: " + new Random().nextInt() + "\n");
		%>
 	</td>
 </tr>
 </table>