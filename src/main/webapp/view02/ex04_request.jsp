<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장 객체 : request</title>
</head>
<body>
<%--
	request : 클라이언트가 요청한 정보를 담고 있음 (파라미터도 가지고 있음)
	** request의 생명주기 response가 이루어지면 끝난다.
	request가 가지고 있는 정보들
	  - 클라이언트의 정보 및 서버 정보를 얻을 수 있는 메서드를 제공 
	  - form 태그에서 보낸 파라미터의 정보를 제공 
	  - 요청 헤드의 정보 제공 
	  
	   1) 클라이언트의 정보 빛 서버 정보를 얻을 수 있는 메서드들 
	      - getRemoteAddr()           - getContentLength()
	      - getCharacterEncoding()    - getContentType()
	      - getProtocol()             - getContentPath()
	      - geetRequestURI()          - getContextPath()
	      - getServerName()           - getServerPort()
	      
	   ** 2) 파라미터 정보 제공
	      - getParameter(String name)       : String
	      - getParameterValues(String name) : String[]
	      - getParameterMap(String name)    : Map<String, String[]>
	      - getParameterNames()             : Enumeration<String>
	      
	    3) 요청 헤드 정보 
	      - getHeader(String name)        : 헤더 값 구하기 
	      - getHeader(Enumeration)        : 헤더 목록 구하기 
	      - getHeaderNames()              : 헤더 이름 구하기 
	      - getIntHeader(String name)     : 헤더값을 정수값으로 구하기 
	      - getDeteHeader(String name)    : 헤더값을 날짜값으로 구하기
	       
	   ** 4) 다른 주요 메서드 
	     - 포워드 : request.getRequestDispacher("이동할 주소").forward(reqeust, response);
	     - 세션 호출 : request.getSession();
	     ** MVC 패턴에서 중요한 포인트 :
	       -- request는 response하면 사라진다.
	       -- request을 이용한 데이터 저장 : request.setAttribute("이름", 데이터);
	       -- request을 이용한 데이터 호출 : request.getAttribute("이름");                
 --%>
 	<h2>Request를 활용한 클라이언트 정보 및 서버 정보 보기</h2>
 	<h3>
 		<ul>
 			<li>접속 클라이언트 ip : <%=request.getRemoteAddr()%></li>
 			<li>요청 정보 길이 : <%=request.getContentLength()%></li>
 			<li>요청 정보 인코딩 : <%=request.getCharacterEncoding()%></li>
 			<li>요청 정보 컨텐츠 타입 : <%=request.getContentType()%></li>
 			<li>요청 정보 프로토콜 : <%=request.getProtocol()%></li>
 			<li>요청 정보 정보 전달 방식 : <%=request.getMethod()%></li>
 			<li>요청 정보 URI : <%=request.getRequestURI()%></li>
 			<li>컨텍스트 경로 : <%=request.getContextPath()%></li>
 		</ul>
 	</h3>
</body>
</html>












