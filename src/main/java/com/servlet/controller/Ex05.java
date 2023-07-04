package com.servlet.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Ex05")
public class Ex05 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 서블릿의 역할은 클라이언트에서 요청한 것을 받아서 
		// 요청에 맞는 일 처리를 하는 곳으로 전달 (자바 = 순수 자바 = POJO )하고 
		// 해당 일 처리의 결과를 받아서 클라이언트에게 응답하는 역할을 한다.
		// 이러한 결과를 받아서 클라이언트에게 전달하는 역할을 MVC 패턴에서 C에 해당 된다.
		// M : Model(자바)  C: Controller(서블릿)  V: View(HTML,CSS,JS)
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		// 클라이언트가 서버에게 정보를 요청하면서 필요한 정보를 보낼 수 있다.
		// 이렇게 클라이언트가 요청을 처리하기 위해서 함께 전달되는 정보를 '파라미터' 라고 한다.
		
		// 파라미터의 자료형은 기본적으로는 String 이거나 String[] 이다.
		// get 방식 :  주소창에 파리미터 정보가 보인다. (?name=value&name=value...._)
		// post 방식 :  주소창에 파라미터 정보가 보이지 않는다.
		
		// 파라미터를 받아서 처리하는 메서드들 
		// 1. request.getParameter("name") : String
		//    해당 name에 매칭되는 value 추출
		
		// 2. request.getParameterValues("name") : String[]
		
		// 3. request.getParameterMap() : Map<String, String[]>
		//    맵 형식으로 파라미터를 받을 때 사용
		// 4. request.getParameterNames() : Enumeration<String>
		//    열거형 파라미터를 받을 떄 사용
		
		
		// 만약에 아이디와 패스워드가  파라미터값으로 넘어왔을 때 처리하는 방버
		out.println("<h2>서블릿 파라미터 예시</h2>");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		out.println("<h3>");
		out.println("<p>아이디 : " + id + "</p>");
		out.println("<p>비밀번호: " + pw + "</p>");
		out.println("</h3>");
		out.println("<hr>");
	}
}







