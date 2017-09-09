package com.test.jsp;

import java.util.Calendar;
import java.util.Date;

public class TestJSP {

	public static void main(String[] args) {
		
		Calendar c = Calendar.getInstance();
		c.setTime(new Date());
		c.add(Calendar.DATE, 2);
		System.out.println(c.get(Calendar.DAY_OF_WEEK));
	}

}
