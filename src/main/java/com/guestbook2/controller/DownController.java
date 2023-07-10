package com.guestbook2.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DownController")
public class DownController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
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
	    response.reset();
	    
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
	    
	    }catch(Exception e){
	    	
	    }finally{
	    	try{
				bos.close();
				bis.close();
				fis.close();
	    	}catch(Exception e2){
	    	}
	    }
	}
}

















