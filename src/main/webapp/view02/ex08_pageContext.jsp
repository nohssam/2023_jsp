<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장 객체 : pageContext</title>
</head>
<body>
<%--
	pageContext 객체는 JSP 페이지에 1:1 연결된 객체로 
	JSP 페이지당 하나의 pageContext객체가 생성된다.
	같은 페이지에서 서로 값을 공유 할 수 있으면,
	주요 기능은 다른 기본 내장 객체를 호출하거나 ,페이지 흐름을 제어할때 사용
	 - 다른 기본 내장 객체 호출
	   -- getRequest(), getResponse(), getOut(), getSession()
	      getServletContext() => application 객체 구하기
	      getServletConfig()  => config 객체 구하기 
	      getException()  => exception 객체 구하기 
	      
	      ** request와 같은 방법
	      데이터 저장 : pageContext.setAttribute("이름", 데이터);
	      데이터 호출 : pageContext.getAttribute("이름")
	      
	      ** 속성을 이용해서 데이터 저장 및 호출하는 내장 객체들
	      만약 이름이 같을 때  
	      우선순위 : pageContext > request > session > application
	      생면주기 : pageContext < request < session < application
	               
	               pageContext : 해당 페이지를 벗어나면 정보도 사라진다.
	               request :  response가 되면 정보도 사라진다.
	               session : 해당 브라우저가 종료되면 저장 정보도 사라진다.
	                         (예외적으로 시간을 지정할 수 있다.)
	                         보통은 로그인 처리할 때 사용
	               application : 해당 프로그램이 종료 될때까지 정보가 사라지지 않는다.
	                              보통 외부 환경 정보를 가지고 있다.
	                              
	         ** 속성을 이용해서 저장된 데이터는 EL(표현언어 = ${이름})를 사용할 수 있다.    
 --%>
 <%
 	// 데이터 저장
 	pageContext.setAttribute("addr", "서울 마포구");
 	pageContext.setAttribute("age", 24);
 	pageContext.setAttribute("gender", true);
  %>	
    <h1>표현식</h1>
 	<h2>주소 : <%= pageContext.getAttribute("addr") %> </h2>
 	<h2>나이 : <%= pageContext.getAttribute("age")%></h2>
 	<h2>성별 : <%= pageContext.getAttribute("gender")%></h2>
 	<hr>
 	<h1>EL(표현언어)</h1>
 	<h2>주소 : ${addr }</h2>
 	<h2>나이 : ${age }</h2>
 	<h2>성별 : ${gender }</h2>
 	<hr>
 	
 	<%
 		// 4가지 스코프를 이용해서 저장 (같은이름) 	
 		pageContext.setAttribute("name", "홍길동");
 		request.setAttribute("name", "둘리");
 		session.setAttribute("name", "희동이");
 		application.setAttribute("name", "공실이");
 	%>
 	 <h1>표현식</h1>
 	 <h2>pageContext : <%= pageContext.getAttribute("name") %> </h2>
 	 <h2>request : <%= request.getAttribute("name")%></h2>
 	 <h2>session : <%= session.getAttribute("name")%></h2>
 	 <h2>application : <%= application.getAttribute("name")%></h2>
 	 <hr>
 	 
 	 <h1>EL(표현언어)</h1>
 	 <h2>이름 : ${name}</h2>
 	 <h2>이름 : ${pageScope.name}</h2>
 	 <h2>이름 : ${requestScope.name}</h2>
 	 <h2>이름 : ${sessionScope.name}</h2>
 	 <h2>이름 : ${applicationScope.name}</h2>
</body>
</html>









