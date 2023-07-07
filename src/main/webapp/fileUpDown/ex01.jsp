<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function send_go(f) {
		f.action="/jsp/FileUpController?cmd=fileup";
		f.submit();
	}
</script>
</head>
<body>
<%--
	1. http://www.servlets.com  => 라이브러리 다운로드 
	   WEB-INF 안에 lib 폴더 안에 넣어주자.
	2. 업로드 시 반드시 <form method="post" enctype="multipart/form-data"> 반드시 설정
	3. 이클립스로 실행 해서 업로드 하면 실제 파일 위치는 가상 톰켓에 저장된다.
	   실제 톰켓에 올리면 원하는 위치에 파일을 저장할 수 있다.  
	   
	** 만약에 파라미터를 사용하려면 hidden를 사용할 수 없다.    
 --%>
 <form method="post" enctype="multipart/form-data">
 	<p>올린 사람 : <input type="text" name="name"></p>
 	<p>첨부 파일 : <input type="file" name="f_name"></p>
 	<input type="button" value="업로드" onclick="send_go(this.form)">
 	<!-- <input type="hidden" name="cmd" value="fileup"> -->
 </form>
</body>
</html>