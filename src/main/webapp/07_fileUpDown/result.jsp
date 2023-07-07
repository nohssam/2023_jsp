<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>결과보기</h2>
	<h3>
		<li>올린사람 : ${name }</li>		
		<li>파일원본이름 : ${f_name }</li>		
		<li>파일저장이름 : ${f_name2 }</li>		
		<li>파일타입 : ${contentType }</li>		
		<li>파일크기 : ${f_size } Byte</li>		
		<li>마지막수정날짜 : ${f_last }</li>
		<li>마지막수정날짜 : ${f_last2}</li>
		<li><img src="upload/${f_name2}"> </li>
		<li>다운로드 : <a href="07_fileUpDown/down.jsp?path=upload&f_name=${f_name2}">${f_name2}</a></li>		
		<li>다운로드 : <a href="/jsp/FileDownController?path=upload&f_name=${f_name2}">${f_name2}</a></li>
	</h3>
</body>
</html>