<%@page import="java.io.BufferedOutputStream"%>
<%@page import="java.io.BufferedInputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("utf-8");
    String path = request.getParameter("path");
    String f_name = request.getParameter("f_name");
    
    // 실제 위치
    String realPath = getServletContext().getRealPath("/"+path);
    
    // 웹 브라우저 문서 타입을 다운로드 할 수 있도록 변경 
    response.setContentType("application/x-msdownload");
    
    // http 헤더 정보도 첨부파일이 존재하는 것으로 변경
    response.setHeader("Content-Disposition",
    		"attachment; filename="+URLEncoder.encode(f_name, "utf-8"));
    
    //////////////////////////////////////////////////////////
    // 실제 바이트 스트림을 이용해서 다운로드 하자 
    File file = new File(realPath+"/"+new String(f_name.getBytes(),"utf-8"));
    int b;
    FileInputStream fis = null;
    BufferedInputStream bis = null;
    BufferedOutputStream bos = null;
    try{
    	fis = new FileInputStream(file);
    	bis = new BufferedInputStream(fis);
    	
    	bos = new BufferedOutputStream(response.getOutputStream());
    	while((b=bis.read()) != -1){
    		bos.write(b);
    		bos.flush();
    	}
    	out.clear();
    	out = pageContext.pushBody();
    }catch(Exception e){
    	
    }finally{
    	try{
			bos.close();
			bis.close();
			fis.close();
    	}catch(Exception e2){
    	}
    }
%>















