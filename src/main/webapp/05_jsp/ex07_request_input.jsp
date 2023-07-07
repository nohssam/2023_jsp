<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action=" <%=request.getContextPath()%>/MyController01" method="post">
		<p>ID : <input type="text" name="id" required> </p>
		<p>PW : <input type="password" name="pw" required> </p>
		<input type="submit" value="로그인">
	</form>
</body>
</html>