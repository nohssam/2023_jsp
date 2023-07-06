<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL : JSP 표준 태그 라이브러리</title>
</head>
<body>
<%--
	1. 라이브러리 다운 받아서 해당 프로젝트에 넣기 (tomcat.apache.org)
	2. 다운 받은 라이브러리를 WEB-INF 안에 lib 폴더안에 넣어주자.
	3. 지시어 중 taglib를 선언하고 정의 하자 
	   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
       <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
	   
	   - core(코어)           : <c:명령어>
	   - fmt(국제화=숫자,날짜)   : <fmt:명령어>
 --%>
  
  <%-- 변수 생성 및 데이터 저장 : 기본이 pageContext에 저장된다. --%>
  <%-- 변수 생성 set : <c:set var="변수명" value="데이터" /> --%>
  <c:set var="str" value="Hello JSTL!!" />
  
   <%-- 변수 출력(out) :   <c:out value="출력할내용 또는 EL표시(변수값출력)" /> --%>
   <c:out value="str" /> <br>
   <c:out value="${str}" />  <br>
   ${str} <br>
   <hr>
   
   삭제 전 : ${str} <br>
   <%-- EL 사용하는 것이 아님 --%>
   <c:remove var="str"/>
   삭제 후 : ${str} <br>
   <hr>
   
   <%--
   		if문 : else가 없다. 조건식이 참일때만 실행 
        <c:if test="조건식(관계연산,비교연산) -> EL방식으로 작성"  var="변수" >
            조건식이 참일때 실행할 내용
        </c:if>
    --%>
    <c:if test="${4>3}">
      <h2> 결과 : Hello JSTL @@ </h2>
    </c:if>
    
    <%-- avg가 80이상이면 합격 --%>
    <c:set var="avg" value="78" />
    <c:if test="${avg>=80}">
    	<h2>합격</h2>
    </c:if>
    <c:if test="${avg<80}">
    	<h2>불합격</h2>
    </c:if>
   <hr>
   
   <%--
   	    if문은 else가 없어서 불편할 때가 있다.
   	    이것을 대신 하는 것이 choose문이다.
   	    switch문과 비슷하다.
   	    <c:choose>
		   	<c:when test="조건식(관계연산,비교연산) -> EL방식으로 작성">참일때 실행</c:when>
		   	<c:when test="조건식(관계연산,비교연산) -> EL방식으로 작성">참일때 실행</c:when>
		   	<c:when test="조건식(관계연산,비교연산) -> EL방식으로 작성">참일때 실행</c:when>
		   	<c:when test="조건식(관계연산,비교연산) -> EL방식으로 작성">참일때 실행</c:when>
		   	<c:otherwise>
		   		나머지 (위 모든 조건이 아닐때 ) 실행
		   	</c:otherwise>
   		</c:choose>
    --%>
   <%--
   		avg2의 점수가 90점 이상이면 A학점, 80이상이면 B학점, 70이상이면 C학점
   		나머지 F학점
    --%>
    <c:set var="avg2" value="95" />
    <h3>
	    <c:choose>
	    	<c:when test="${avg2>=90.0}">A학점</c:when>
	    	<c:when test="${avg2>=80.0}">B학점</c:when>
	    	<c:when test="${avg2>=70.0}">C학점</c:when>
	    	<c:otherwise>
	    		F학점
	    	</c:otherwise>
	    </c:choose>
    </h3>
    <hr>
   <%--
   		for문
   		1. 일반적인 for문
   		 <c:forEach begin="시작값" end="끝값" step="증가/감소단계" 
   		    var="변수이름" varStatus="변수상태값(index값)">
   	             반복 내용 ${변수이름}  
         </c:forEach>
   		
   		2. 개선된 for문
   		<c:forEach var="변수이름" items="${배열 또는 컬렉션}" varStatus="변수상태값(index값)">
   	             반복 내용 ${변수이름}  
        </c:forEach>
    --%> 
   
	<h2>0-10까지 출력</h2>   
    <c:forEach begin="10" end="12" step="1" var="k" varStatus="vs">
    		${k} &nbsp;&nbsp;${vs.index} &nbsp;&nbsp;${vs.count} 
    		&nbsp;&nbsp;${vs.first} &nbsp;&nbsp;${vs.last} &nbsp;&nbsp;&nbsp; <br>
    		<hr>
    </c:forEach>
    <h2>0-10까지 짝수만  출력</h2>    
    <c:forEach begin="0" end="10" step="1" var="k">
    	<c:if test="${k%2 ==0 }">
    		${k}&nbsp;&nbsp;
    	</c:if>
    </c:forEach> 
    <hr>
    
    <%-- 개선된 for문을 위해서 배열 생성 --%>
    <c:set var="arr_1" value="홍길동,장길산,임꺽정,일지매" />
    <c:forEach var="k" items="${arr_1}">
    	<h3>${k}님</h3>
    </c:forEach>
    ${arr_1}
    <hr>
    
    <%--
    	 반복해서 나누기 
    	 <c:forTokens items="${배열 | 컬렉션}" delims="구분자" var="변수명"></c:forTokens>
    --%>
    
      <c:set var="arr_2" value="홍길동,장길산/임꺽정,일지매/둘리,희동이,고길동" />
   	  <c:forTokens items="${arr_2}" delims="," var="k">
   	  		<h3>${k}님</h3>
   	  </c:forTokens>
   	  <hr>
   	    <c:forTokens items="${arr_2}" delims="/" var="k">
   	  		<h3>${k}님</h3>
   	  </c:forTokens>
   	  <hr>
   	    <c:forTokens items="${arr_2}" delims=",/" var="k">
   	  		<h3>${k}님</h3>
   	  </c:forTokens>
</body>
</html>















