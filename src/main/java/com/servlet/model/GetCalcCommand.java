package com.servlet.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GetCalcCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 알처리
		int s1 = Integer.parseInt(request.getParameter("s1"));
		int s2 = Integer.parseInt(request.getParameter("s2"));
		String op = request.getParameter("op");
		
		int result = 0 ;
		switch (op) {
			case "+": result = s1 + s2 ; break;
			case "-": result = s1 - s2 ; break;
			case "*": result = s1 * s2 ; break;
			case "/": result = s1 / s2 ; break;
		}
		
		// 화면에 보여줄 내용을 request.setAttribute를 이용해서 저장하자 
		request.setAttribute("s1", s1);
		request.setAttribute("s2", s2);
		request.setAttribute("op", op);
		request.setAttribute("result", result);
		
		
		 // 결과를 보여줄 페이지 지정 
		return "04_servlet/result03.jsp";
	}
}
