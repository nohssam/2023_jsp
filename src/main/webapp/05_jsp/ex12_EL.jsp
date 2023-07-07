<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표현언어 : EL </title>
</head>
<body>
<%--
	EL(Expression Language) : 표현 언어
	MVC 패턴에서는 무조건 EL 또는 JSTL를 사용한다.
	JSP의 표현식을 대신해서 사용하는 언어
	<%= 변수, 메서드의 결과, 계산식 ...%>   ----->   ${변수, 메서드의 결과, 계산식 ...}
	
	** 앞에서 배운 pageContext, request, session, application
	   를 이용해서 데이터를 저장한 정보를 EL이나 JSTL를 이용하면 
	   바로 꺼내서 사용할 수 있다.
 --%>
 
 	<h2>표현식을 사용한 산술연산</h2>
    <h3>
    	<li> 15 + 7 = <%= 15+7 %></li>
    	<li> 15 - 7 = <%= 15-7 %></li>
    	<li> 15 * 7 = <%= 15*7 %></li>
    	<li> 15 / 7 = <%= 15/7 %></li>
    	<li> 15 % 7 = <%= 15%7 %></li>
    </h3> 
    <hr>
    
    <h2>표현언어을 사용한 산술연산</h2>
    <h3>
    	<li> 15 + 7 = ${15+7}</li>
    	<li> 15 - 7 = ${15-7}</li>
    	<li> 15 * 7 = ${15*7}</li>
    	<li> 15 / 7 = ${15/7}</li>
    	<li> 15 % 7 = ${15%7}</li>
    </h3> 
    <hr>
   
    <h2>표현식 변수 사용 예제</h2>
    <%! int su = 125 + 147; %>
    <h3> su = <%=su %></h3>
    <hr>
    
    <h2>표현식 변수 사용 예제</h2>
    <%! int su2 = 125 + 147; %>
    <%-- 안 나옴 : EL은 pageContext,  request, 
                 session, application에 저장되어야 사용 가능 --%>
    <h3> su2 = ${su2} </h3>
    <hr>
    <% pageContext.setAttribute("su2", su2); %>	
    <h3> su2 = ${su2} </h3>
    <hr>
</body>
</html>






















