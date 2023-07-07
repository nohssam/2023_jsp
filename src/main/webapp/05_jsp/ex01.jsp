<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 설명</title>
</head>
<body>
<!-- html 주석 : 소스 보기에서 보인다. -->
<%-- jsp 주석 : 소스보기에서 보이지 않는댜. --%>
<%--
	JSP : Java Server Page
	      HTML 안에서 자바코드를 사용할 수 있도록 만든 스크립트 언어(행 단위 번역실행) 
	JSP : 구성
	  1. 지시어 (디렉티브) : <%@ 지시어 %>
	     -->   <%@ page %>, <%@ include %>, <%@ taglib %>   
	     
	  2. 스크립트요소 : HTML안에서 실제 자바 코드를 사용할 수 있도록 만드는 요소
	     1) 선언부 (<%! 내용 %>)      : 변수선언이나 메소드 선언할 때 사용
	     2) 스크립트릿(<% 자바코드 %>)  : 자바코드를 코딩할 때 사용 
	     3) 표현식(<%= %>)           : 변수값이나 메서드의 결과 등 저장되어 있는 결과값 출력
	     
	      ** out객체 : out.println(변수)
	      ** 현재는 표현식 대신 표현언어(EL과 JSTL를 사용한다.)            
	  
	  ** 주의 사항 :  선언부, 스크립트릿, 표현식을 겹쳐서(포함해서) 사용할 수 없다.  
	  
	  1. 지시어 :  <%@ page %>, <%@ include %>, <%@ taglib %>   
	    1) page 지시어 : 보통 해당 문서의 맨 앞에 나온다.
	                    현재 해당 페이지에 대한 정보를 제공 
	                    톰켓이 해당 page 지시어를 보고, 해당 페이지를 어떻게 해석하고
	                    실행 하는 지를 판단(보통은 그대로 사용한다.)
	       page 지시어 속성들 
	       - language : 스크립트 코드에서 사용하는 언어 지정 (java)
	       - ** contentType : 해당 문서의 타입과 문자셋 지정 (캐릭터 인코딩)
	          -- 인코딩(부호화, 암호화) : 정보의 형태를 변환
	          -- 디코딩(복호화)        : 변환된 정보를 원래 형태로 되돌리는 것 
	       - pageEncoding : 해당 페이지를 utf-8 형태로 변환해서 처리 하겠다는 뜻
	       - session : 세션(저장공간)을 사용 여부 (기본 : true) 
	       - buffer 버퍼(임시기억) : 출력에 사용되는 임시 저장 공간 (기본 : 8Kb)
	       - autoFlush : 출력버퍼가 다 차지 않아도 바로 출력 시켜줌 (기본 : true)
	       - errorPage : 해당 페이지가 에러를 발생했을 때 처리하는 오류 페이지 지정
	       - isErrorPage : 해당 페이자가 오류를 처리할 수 있는 페이지이면 true, 아니면 false (기본:false)
	       
	      2) taglib 지시어 : 해당 페이지에서 사용할 태그 라이브러리 지정
	                       나중에 JSTL를 사용할때 필요 
	      3) include 지서어 : HTML의 iframe고ㅓㅏ 비슷하다.
	                        현재 페이지에서 특정 역영에 다른 페이지를 포함 시킬때 사용
	       ** include는 지시어를 사용하는 방법과 include 액션 태그를 사용하는 방법 두가지다.                                    
	                  
 --%>

</body>
</html>




