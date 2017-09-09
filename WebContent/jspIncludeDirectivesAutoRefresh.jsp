<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="refresh" content="20">

<head>

	<title>Auto page or part of page refresh</title>
	
	<script type = "text/javascript"  src = "<%=request.getContextPath()%>/jquery/3.1.1/jquery-3.1.1.min.js"></script>
	
</head>
   
   <body>
   
 	  <table>
	 	  <tr>
	 	  	
	 	  	<td>
	 	  		<iframe src="<%=request.getContextPath()%>/includeAutoRefresh1.jsp?refreshTimeInterval=5" style="border:0px;"></iframe>
	 	  	</td>
	 	  	
	 	  	<td>
	 	  		<iframe src="<%=request.getContextPath()%>/includeNonAutoRefresh2.jsp" style="border:0px;"></iframe>
	 	  	</td>
	 	  	
	 	  </tr>
	 	  
	 	  <tr>
	 	  	<td>
	 	  		<div id="autoJSRefreshDiv" style="border:2px; border-style: solid; border-color:grey"></div>
	 	  	</td>
	 	  	<td>
	 	  		<div id="autoJQUERYRefreshDiv"></div>
	 	  	</td>
	 	  </tr>
	 	  
	 	  <tr>
	 	  	<td colspan="2">&nbsp;</td>
	 	  </tr>
	 	  
	 	  <tr>
	 	  	<td colspan="2">
	 	  		<div id="autoAJAXRefreshDiv" style="border:2px; border-style: solid; border-color:red"></div>
	 	  	</td>
	 	  </tr>
	 	  
 	  </table>
 	  
	  <script type="text/javascript">
	  	   
	      // USING JavaScript
		  function autoJSRefreshDiv() {
			document.getElementById("autoJSRefreshDiv").innerHTML = "DIV Auto Refresh by JavaScript<br><br>" + Math.random();
		  	document.getElementById("autoJSRefreshDiv").onload;
		  }
		  setInterval('autoJSRefreshDiv()', 5000); // this will reload div:autoRefreshDiv after every 5 secounds;
		  
		  
		  // Using JQUERY
		  var ctxPath = '<%=request.getContextPath()%>';
		  $(document).ready(function() {
		      setInterval(function() {
		    	  $('#autoJQUERYRefreshDiv').load(ctxPath + '/includeJQUERYAutoRefresh3.jsp');
		  },5000); });
		  
		  
		  // Using AJAX
			var auto = setInterval(
					function callTimer() {
						var xmlhttp = window.XMLHttpRequest ? new XMLHttpRequest() : new ActiveXObject("Microsoft.XMLHTTP");
						xmlhttp.onreadystatechange = function() {
							if (xmlhttp.readyState == 4) {
								if (xmlhttp.status == 200) {
									document.getElementById("autoAJAXRefreshDiv").innerHTML = xmlhttp.responseText;
								}
							}
						}
						xmlhttp.open("GET", "http://headers.jsontest.com/", true);
						xmlhttp.send();
					}, 5000);
			</script>
 	  
   </body>
</html>