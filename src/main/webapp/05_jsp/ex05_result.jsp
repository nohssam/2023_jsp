<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 파라미터값 받기
	// 한글 처리 
	request.setCharacterEncoding("utf-8");
    // 파라미터는 request에 저장되어 있다.
    String  name = request.getParameter("name") ;
    // 파라미터는 일반적으로 String, String[]이다.
    String age = request.getParameter("age");
    String gender = request.getParameter("gender");
    
    // 같은 이름이 여러개 넘어오면 배열처리 (checkbox, select 속성이 multiple)
    String[] hobby = request.getParameterValues("hobby");
    
    pageContext.setAttribute("name", request.getParameter("name"));
    pageContext.setAttribute("age", request.getParameter("age"));
    pageContext.setAttribute("gender", request.getParameter("gender"));
    pageContext.setAttribute("hobby", request.getParameterValues("hobby"));
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>결과 표시</h2>
	<h3>
		<ul>
			<li>이름 : <%=name %></li>
			<li>나이 : <%=age %></li>
			<li>성별 : <%=gender %></li>
			<li>취미 : 
			      <%
			      	for(String k :hobby){
			      		out.println(k );
			      	}
			      %>
			</li>
		</ul>
	</h3>
	<hr>
	<h3>
		<ul>
			<li>이름 : ${name}</li>
			<li>나이 : ${age}</li>
			<li>성별 : ${gender}</li>
			<li>취미 : ${hobby[0]} ${hobby[1]} ${hobby[2]} ${hobby[3]}	</li>
		</ul>
	</h3>
</body>
</html>








