package com.test.jsp;

import javax.servlet.jsp.tagext.*;
import javax.servlet.jsp.*;
import java.io.*;

public class HelloAttrTagHandler extends SimpleTagSupport {

	private String message;

	public void setMessage(String msg) {
		this.message = msg;
	}

	StringWriter sw = new StringWriter();

	public void doTag()

			throws JspException, IOException {
		if (message != null) {
			/* Use message from attribute */
			JspWriter out = getJspContext().getOut();
			out.println(message + " I am from tag handler class!");
		} else {
			/* use message from the body */
			getJspBody().invoke(sw);
			getJspContext().getOut().println(sw.toString());
		}
	}
}