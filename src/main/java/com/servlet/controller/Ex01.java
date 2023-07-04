package com.servlet.controller;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 서블릿 : 자바를 가지고 웹 페이지를 표현 
//        즉, 자바에서 HTML, CSS, JavaScript 등을 표현해서 
//        웹 페이지로 만드다. (main 메서드는 없다.)


// URLMapping : 인터넷에서 해당 페이지 접근 주소 (/프로젝트/urlmapping)
@WebServlet("/Ex01")
public class Ex01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public Ex01() {
		System.out.println("생성자");
	}
	public void init(ServletConfig config) throws ServletException {
		// 멤버필드 초기화
		// init()가 끝나면 자동으로 service()를 호출 한다.
		System.out.println("init");
	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// request(요청) = 요청정보를 가지고 있음, response(응답) = 응답정보를 가지고 있다.
		// 클라이언트가 정보를 요청할때 요청방식에 따라 알맞는 메서드를 호출하는 역할
		// 요청방식 : get 방식 (생략가능) : http 패킷의 head에 정보를 담아서 보낸다.
		//                             주소창에 해당 정보가 보인다.
		//                             속도는 빠르나 적은 양을 전달할때 사용
		//                             정보가 보이기 때문에 보안에 취약 
		//          post 방식 : http 패킷의 body에 정보를 담아서 보낸다.
		//                     주소창에 정보가 보이지 않는다.
		//                     속도는 get방식보다 느리나, 많은 양을 전달할 수 있다.
		
		System.out.println("service");
		
		// doGet(), doPost()를 요청방식에 맞게 호출한다.
		if(request.getMethod().equalsIgnoreCase("get")) {
			doGet(request, response);
		}else if(request.getMethod().equalsIgnoreCase("post")) {
			doPost(request, response);
		}
	}

	// 실제 웹페이지에 보이는 부분을 처리하는 것은 doGet() 또는 doPost() 이다.
	// doGet() 또는 doPost() 에서 자바코드로 HTML,CSS,JavaScript를 작성하면
	// 웹 페이지가 클라이언트에게 보인다. 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
	}

	// 해당 프로젝트가 톰켓에서 삭제 되기 직전에 실행되는 메서드 
	public void destroy() {
		System.out.println("destroy");
	}
}
