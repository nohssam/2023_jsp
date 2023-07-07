<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>로그인 결과 페이지</h2>
	<%
	// request.getAttribute 나올때는 Object로 나오므로 형변환하자
	   int result =	(int)request.getAttribute("logInChk");
	
	   if(result == 1 ){
		   out.println("<h2>로그인성공</h2>");
	   }else if(result == 0){ %>
		 <%--  out.println("<h2>로그인실패</h2>"); --%>
		 <script type="text/javascript">
		 	alert("로그인 실패");
		 	// 다시 로그인 창으로 이동
		 	// location.href="view02/ex07_request_input.jsp";
		 	// 뒤로 한번
		 	history.go(-1)
		 </script>
	  <%}%>
</body>
</html>