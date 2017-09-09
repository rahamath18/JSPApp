

<!-- Entire Page gets reload every 20 seconds  -->

<head>
	<meta http-equiv="refresh" content="20">
<head>


<!-- JavaScript: Only div:autoJSRefreshDiv inner HTML gets reload every 5 seconds  -->

  <div id="autoJSRefreshDiv" style="border:2px; border-style: solid; border-color:grey"></div>

  function autoJSRefreshDiv() {
	document.getElementById("autoJSRefreshDiv").innerHTML = "DIV Auto Refresh by JavaScript<br><br>" + Math.random();
  	document.getElementById("autoJSRefreshDiv").onload;
  }
  setInterval('autoJSRefreshDiv()', 5000); // this will reload div:autoJSRefreshDiv after every 5 seconds.
  
  
<!-- JQuery: Only autoJQUERYRefreshDiv inner HTML gets reload every 5 seconds  -->
 
  <div id="autoJQUERYRefreshDiv"></div>
  
  var ctxPath = '<%=request.getContextPath()%>';
  
  $(document).ready(function() {
      setInterval(function() {
    	  $('#autoJQUERYRefreshDiv').load(ctxPath + '/includeJQUERYAutoRefresh3.jsp');
  },5000); });
 

<!-- AJAX: Only autoAJAXRefreshDiv inner HTML gets reload every 5 seconds  -->

<div id="autoAJAXRefreshDiv" style="border:2px; border-style: solid; border-color:red"></div>

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


// Servlet & JSP: using response.setIntHeader...
<%
  
  Note: If you want refresh a part of page then include a jsp in <iframe> as below
  
  <iframe src="<%=request.getContextPath()%>/includeAutoRefresh1.jsp?refreshTimeInterval=9" style="border:0px;"></iframe>
  
  // here i pass refreshTimeInterval as 9 seconds
  
  //includeAutoRefresh1.jsp
  response.setIntHeader("Refresh", 10); //every 10 seconds page will be auto refreshed
  
  
%>