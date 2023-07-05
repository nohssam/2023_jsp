package com.jsp.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex10_2_Model implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		return "view02/ex10_session_result.jsp";
	}
}
