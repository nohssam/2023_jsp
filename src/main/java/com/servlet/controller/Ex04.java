package com.servlet.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ex04")
public class Ex04 extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 응답에 대한 한글 처리 
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		// 상대주소를 이용해서 a링크로 다른 문서 호출
		out.println("<a href='Ex03'> 문서3 </a><br>");
		
		// 절대주소를 이용해서 a링크로 다른 문서 호출
		// out.println("<a href='/프로젝트이름/URL'> 문서3 </a> ");
		out.println("<a href='/jsp/Ex03'> 문서3 </a><br> ");
		out.println("<a href='"+request.getContextPath() +"/Ex03'> 문서3 </a><br> ");
		out.println("<a href='https://www.naver.com'> 네이버 </a><br> ");
	}
}










