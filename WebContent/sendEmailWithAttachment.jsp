<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "java.io.IOException"%>
<%@ page import = "java.io.File"%>
<%@ page import = "java.io.IOException"%>
<%@ page import = "java.io.PrintWriter"%>
<%@ page import = "java.util.ArrayList"%>
<%@ page import = "java.util.Date"%>
<%@ page import = "java.util.HashMap"%>
<%@ page import = "java.util.Iterator"%>
<%@ page import = "java.util.List"%>
<%@ page import = "java.util.Map"%>
<%@ page import = "java.util.Properties"%>

<%@ page import = "javax.activation.DataHandler"%>
<%@ page import = "javax.activation.DataSource"%>
<%@ page import = "javax.activation.FileDataSource"%>
<%@ page import = "javax.mail.BodyPart"%>
<%@ page import = "javax.mail.Message"%>
<%@ page import = "javax.mail.MessagingException"%>
<%@ page import = "javax.mail.Multipart"%>
<%@ page import = "javax.mail.Part"%>
<%@ page import = "javax.mail.Session"%>
<%@ page import = "javax.mail.Transport"%>
<%@ page import = "javax.mail.internet.InternetAddress"%>
<%@ page import = "javax.mail.internet.MimeBodyPart"%>
<%@ page import = "javax.mail.internet.MimeMessage"%>
<%@ page import = "javax.mail.internet.MimeMultipart"%>
<%@ page import = "javax.servlet.ServletException"%>
<%@ page import = "javax.servlet.http.HttpServlet"%>
<%@ page import = "javax.servlet.http.HttpServletRequest"%>
<%@ page import = "javax.servlet.http.HttpServletResponse"%>

<%@ page import = "org.apache.commons.fileupload.FileItem"%>
<%@ page import = "org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@ page import = "org.apache.commons.fileupload.servlet.ServletFileUpload"%>
 

<%

	/*
	 * 1. Download and run the fakesmtp.jar
	 * 2. Download URL: http://nilhcem.com/FakeSMTP/download.html
	 * 3. jar name: fakeSMTP-2.0.jar
	 * 4. Start this fake SMTP server at port: 2525
	 * 
	 */
	    String filePath = pageContext.getServletContext().getInitParameter("file-upload");

		if( !ServletFileUpload.isMultipartContent(request) ) {
			Date date = new Date();

		   // Set response content type
		   String title = "Error at submitting multipart/form-data form!";
		   String docType = "<!doctype html public \"-//w3c//dtd html 4.0 " + "transitional//en\">\n";

		   String sendEmailWithAttachmentPage = "http://localhost:8080/JSPApp/jspSendEmailWithAttachment.html";
		   
		   out.println(docType +
		      "<html>\n" +
		      "<head><title>" + title + "</title></head>\n"+
		      "<body bgcolor = \"#f0f0f0\">\n" +
		      "<h1 align = \"center\">" + title + "</h1>\n" +
		      "<p style='font-size:25px;'>Current Time is: " + date + "</p>\n" + 
		      "<p style='font-size:25px;'>Submitted for is not multipart/form-data!</p>\n" + 
		      "<a href='" + sendEmailWithAttachmentPage + "'>Goto send Email With Attachment Page...</a>"
		   );
		    out.println("</body></html>");
			return;
		}
		List<File> attachedFileList = new ArrayList<File>();
		Map<String, String> formFieldMap = new HashMap<String, String>();
		
		DiskFileItemFactory factory = new DiskFileItemFactory();
		factory.setSizeThreshold(5000 * 1024);  // maximum size that will be stored in memory
		factory.setRepository(new File("c:\\temp")); // Location to save data that is larger than maxMemSize.
		ServletFileUpload upload = new ServletFileUpload(factory);  // Create a new file upload handler

		upload.setSizeMax( 5000 * 1024 );  // maximum file size to be uploaded.
		try { 
			List fileItems = upload.parseRequest(request);  // Parse the request to get file items.
			Iterator i = fileItems.iterator(); // Process the uploaded file items
			while ( i.hasNext () ) {
				FileItem fi = (FileItem)i.next(); // contains contentType, isInMemory, size etc..
				if ( !fi.isFormField () ) {
					
					String fileName = fi.getName(); // Get the uploaded file parameters

					// Write the file
					File file;
					if( fileName.lastIndexOf("\\") >= 0 ) {
						file = new File( filePath + fileName.substring( fileName.lastIndexOf("\\"))) ;
					} else {
						file = new File( filePath + fileName.substring(fileName.lastIndexOf("\\")+1)) ;
					}
					fi.write( file ) ;
					
					attachedFileList.add(file);
					
				}  else if (fi.isFormField()) {
                 formFieldMap.put(fi.getFieldName(), fi.getString());
             }  
			}
			System.out.println("attachedFileList = " + attachedFileList);
			System.out.println("Form Fields = " + formFieldMap);
		} catch(Exception ex) {
			ex.printStackTrace();
		}
		
		//Map<String, String> formFieldMap = getFormFields(request, response);
		File filename = attachedFileList.get(0);
		String fromEmailId = (formFieldMap.containsKey(new String("fromEmailId"))) ? formFieldMap.get("fromEmailId") : null;
		String toEmailId = (formFieldMap.containsKey(new String("toEmailId"))) ? formFieldMap.get("toEmailId") : null;
		String ccEmailId = (formFieldMap.containsKey(new String("ccEmailId"))) ? formFieldMap.get("ccEmailId") : null;
		String btoEmailId = (formFieldMap.containsKey(new String("btoEmailId"))) ? formFieldMap.get("btoEmailId") : null;
		String emailSubject = (formFieldMap.containsKey(new String("emailSubject"))) ? formFieldMap.get("emailSubject") : null;
		String emailBody = (formFieldMap.containsKey(new String("emailBody"))) ? formFieldMap.get("emailBody") : null;

		// Assuming you are sending email from localhost
		String host = "localhost";

		// Get system properties
		Properties properties = System.getProperties();

		// Setup mail server
		properties.setProperty("mail.smtp.host", host);
		properties.setProperty("mail.smtp.port", "2525");

		// Get the default Session object.
		Session mailSession = Session.getDefaultInstance(properties);

		try {
			  MimeMessage message = new MimeMessage(mailSession); // Create a default MimeMessage object.

			  message.setFrom(new InternetAddress(fromEmailId)); // Set From: header field of the header.

			  message.addRecipient(Message.RecipientType.TO, new InternetAddress(toEmailId)); // Set To: header field of the header.

			  message.setSubject(emailSubject); // Set Subject: header field
			
		      BodyPart messageBodyPart = new MimeBodyPart(); // Create the message part 

		      // messageBodyPart.setText("This is message body"); // Fill the message
		      messageBodyPart.setContent("<h1>Please read actual message as below!</h1>"
		         		+ "<br>"
		         		+ "<p style='font-size:20px ;color:green;'>" + emailBody + "</p>", "text/html" );
		      
		      Multipart multipart = new MimeMultipart(); // Create a multipart message

		      multipart.addBodyPart(messageBodyPart); // Set text message part

		      messageBodyPart = new MimeBodyPart(); // Part two is attachment
		      
		      DataSource source = new FileDataSource(filename);
		      
		      messageBodyPart.setDataHandler(new DataHandler(source));
		      messageBodyPart.setFileName(filename.getName());
		      multipart.addBodyPart(messageBodyPart);

		      message.setContent(multipart ); // Send the complete message parts
			
			 // Send the actual HTML message, as big as you like
	         message.setContent("<h1>Dear Sir/Madam, "
	         		+ "<br>Please read actual message as below</h1>"
	         		+ "<br>"
	         		+ "<p style='font-size:20px ;color:green;'>" + emailBody + "</p>", "text/html" );
			
			Transport.send(message); // Send message
			
			String title = "Send Email";
			String res = "Sent message successfully....";
			String docType = "<!doctype html public \"-//w3c//dtd html 4.0 " + "transitional//en\">\n";
			String sendEmailWithAttachmentPage = "http://localhost:8080/JSPApp/sendEmailWithAttachment.html";
			out.println(docType +
					"<html>\n" +
					"<head><title>" + title + "</title></head>\n" +
					"<body bgcolor = \"#f0f0f0\">\n" +
					"<h1 align = \"center\">" + title + "</h1>\n" +
					"<p align = \"center\">" + res + "</p>\n" + 
				    "<a href='" + sendEmailWithAttachmentPage + "'>Goto send Email With Attachment Page...</a>" +
					"</body></html>"
					);
			
		} catch (MessagingException mex) {
			
			mex.printStackTrace();
		}

%>