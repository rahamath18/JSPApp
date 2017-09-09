<html>
   <head>
      <title>Setting HTTP Status Code</title>
   </head>
   
   <body>
   		<a href="https://www.tutorialspoint.com/jsp/jsp_http_status_codes.htm">For more details for JSP HTTP Status Code</a>
   
      <%
         // Set error code and reason.
         	response.sendError(100, "Continue!!!" );
			response.sendError(101, "Switching Protocols!!!" );
			response.sendError(200, "OK!!!" );
			response.sendError(201, "Created!!!" );
			response.sendError(202, "Accepted!!!" );
			response.sendError(203, "Non-authoritative Information!!!" );
			response.sendError(204, "No Content!!!" );
			response.sendError(205, "Reset Content!!!" );
			response.sendError(206, "Partial Content!!!" );
			response.sendError(300, "Multiple Choices!!!" );
			response.sendError(301, "Moved Permanently!!!" );
			response.sendError(302, "Found!!!" );
			response.sendError(303, "See Other!!!" );
			response.sendError(304, "Not Modified!!!" );
			response.sendError(305, "Use Proxy!!!" );
			response.sendError(306, "Unused!!!" );
			response.sendError(307, "Temporary Redirect!!!" );
			response.sendError(400, "Bad Request!!!" );
			response.sendError(401, "Unauthorized!!!" );
			response.sendError(402, "Payment Required!!!" );
			response.sendError(403, "Forbidden!!!" );
			response.sendError(404, "Not Found!!!" );
			response.sendError(405, "Method Not Allowed!!!" );
			response.sendError(406, "Not Acceptable!!!" );
			response.sendError(407, "Proxy Authentication Required!!!" );
			response.sendError(408, "Request Timeout!!!" );
			response.sendError(409, "Conflict!!!" );
			response.sendError(410, "Gone!!!" );
			response.sendError(411, "Length Required!!!" );
			response.sendError(412, "Precondition Failed!!!" );
			response.sendError(413, "Request Entity Too Large!!!" );
			response.sendError(414, "Request-url Too Long!!!" );
			response.sendError(415, "Unsupported Media Type!!!" );
			response.sendError(417, "Expectation Failed!!!" );
			response.sendError(500, "Internal Server Error!!!" );
			response.sendError(501, "Not Implemented!!!" );
			response.sendError(502, "Bad Gateway!!!" );
			response.sendError(503, "Service Unavailable!!!" );
			response.sendError(504, "Gateway Timeout!!!" );
			response.sendError(505, "HTTP Version Not Supported!!!" );
      %>
   </body>
</html>

