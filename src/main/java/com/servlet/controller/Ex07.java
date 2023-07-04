package com.servlet.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Ex07")
public class Ex07 extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 요청에 대한 한글처리
		request.setCharacterEncoding("utf-8");
		// 응답에 대한 한글 처리
		response.setContentType("text/html; charset=utf-8");
		// 출력을 위해서 
		PrintWriter out = response.getWriter();
		
		try {
			String s1 = request.getParameter("s1");
			String s2 = request.getParameter("s2");
			String op = request.getParameter("op");
			
			int k1 = Integer.parseInt(s1);
			int k2 = Integer.parseInt(s2);
			 
			int y1 = Integer.parseInt(request.getParameter("s1"));
			int y2 = Integer.parseInt(request.getParameter("s2"));
			
			int result = 0;
			switch (op) {
			case "+": result = k1 + k2; break;
			case "-": result = k1 - k2; break;
			case "*": result = k1 * k2; break;
			case "/": result = k1 / k2; break;
			
			}
			
			out.println("<h2>결과 : " + k1 + op + k2 + "=" + result + "</h2>");
			
		} catch (Exception e) {
			out.println("<h2>결과 : 0 으로는 나눌 수가 없습니다.</h2>");
		}
	}
}












