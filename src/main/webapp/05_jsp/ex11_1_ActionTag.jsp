<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>액션태그 : include, forward</title>
<style type="text/css">
	body{
		background-color: skyblue;
	}
	h2{
		background-color: red;
	}
</style>
</head>
<body>
<%--
	액션태그 : JSP 페이지간에 흐름 제어, 자바빈즈 컴포넌트 지원,...
	사용법 :  <jsp: 액션태그>
    예)
        <jsp:include page="include할 파일"></jsp:include>
        <jsp:forward page="forward할 파일"></jsp:forward>
        
     1. include : 현재 페이지에서 다른 페이지를 호출 또는 
                  다른 페이지의 결과를 현재 페이지에서 보여주는 것
                  
        - include 지시어 : <%@ include file="가지고올 패에지" %>
          다른 페이지 소스 전체를 가져와서 현재 페이지에서 한번에 처리 
          파라미터값을 전달 할 수 없댜.
          잘 변경되지 않는 정적인 페이지에 많이 사용된다.
          
         - include 액션태그 : <jsp:include page="가져올 페이지"></jsp:include>
            제어권을 해당 페이지에 넘겨서 일처리흘 한후 결과만 가져온다.
            파라미터값을 전달 할 수 있다.(param 액션 태그를 사용)
            자주 변경되는 동적인 페이지에 많이 사용된다.
             <jsp:include page="">
     	             <jsp:param value="" name=""/>
             </jsp:include>
                                           
 --%>
    <h2>include 지시어 사용하기</h2>
   <%@ include file="ex04_request.jsp" %>
   
   
</body>
</html>












