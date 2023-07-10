package com.guestbook2.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class WriteCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		return "08_guestbook2/write.jsp";
	}
}
