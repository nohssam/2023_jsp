package com.servlet.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ex03")
public class Ex03 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 응답 한글 처리
		response.setContentType("text/html; charset=utf-8");
		// 웹 페이지에 문자를 출력하기 위해서 
		PrintWriter out = response.getWriter();
		
		// 자바를 이용해서 하는 일처리(비즈니스 로직)를 한다.
		
		// 오늘 날짜 구하기 
		Calendar now = Calendar.getInstance();
		int year = now.get(Calendar.YEAR);
		int month = now.get(Calendar.MARCH)+1;
		int day = now.get(Calendar.DATE);
		// 행운 점수 랜덤으로 구하기
		int lucky = (int)(Math.random()*100)+1 ;
		
		out.println("<h2>"+ year +". "+month+". "+day+". 의 운수는 " + lucky + "%  입니다.");
		out.println("<hr>");
		out.println("<h2>요청 정보 출력</h2>");
		out.println("<ul>");
		out.println("<li> 요청주소 : " + request.getRemoteAddr() + "</li>");
		out.println("<li> 요청주소 : " + request.getRemoteHost() + "</li>");
		out.println("<li> 요청포트 : " + request.getRemotePort() + "</li>");
		out.println("<li> 요청사용자 : " + request.getRemoteUser() + "</li>");
		out.println("<li> 해당 파일의 위치 : " + request.getRequestURL() + "</li>");
		out.println("</ul>");
		out.println("<hr>");
		out.println("한국 ICT 인재 개발원");
		out.println("한국 ICT 인재 개발원");
		out.println("한국 ICT 인재 개발원");
	}
}




















