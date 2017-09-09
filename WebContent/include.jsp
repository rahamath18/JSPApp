
<%@ page import = "java.util.ArrayList" %>  
<jsp:directive.page import = "java.util.HashMap" />
<%@ page import = "java.util.Map" %> 
 	  
 	  <%! 
 	  	Map<Integer, String> aMap = new HashMap<Integer, String>(10);
 	  %>
 	  
 	  <% 
 	 	aMap.put(1, "java"); 
 		aMap.put(2, "j2ee"); 
 		aMap.put(3, "servlet,jsp"); 
 	  %>
 	 
 	  <br><br>
 	  <%-- print above collection object --%>
 	  <%= aMap %>