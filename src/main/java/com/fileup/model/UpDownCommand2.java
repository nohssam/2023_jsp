package com.fileup.model;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class UpDownCommand2 {
	FileInputStream fis = null;
    BufferedInputStream bis = null;
    BufferedOutputStream bos = null;
	public void exec(HttpServletRequest request, HttpServletResponse response) {
		try {
		String path = request.getParameter("path");
	    String f_name = request.getParameter("f_name");
	    
	    // 실제 위치
	    String realPath = request.getSession().getServletContext().getRealPath("/"+path);
	    // 웹 브라우저 문서 타입을 다운로드 할 수 있도록 변경 
	    response.setContentType("application/x-msdownload");
	    
	    // http 헤더 정보도 첨부파일이 존재하는 것으로 변경
	    response.setHeader("Content-Disposition",
	    		"attachment; filename=" + URLEncoder.encode(f_name, "utf-8"));
	    //////////////////////////////////////////////////////////
	    // 실제 바이트 스트림을 이용해서 다운로드 하자 
	    File file = new File(realPath+"/"+new String(f_name.getBytes(),"utf-8"));
	    int b;
	    // 초기화 (없으면 안됨)
	    response.reset();
    	fis = new FileInputStream(file);
    	bis = new BufferedInputStream(fis);
    	bos = new BufferedOutputStream(response.getOutputStream());
    	while((b=bis.read()) != -1){
	    		bos.write(b);
	    		bos.flush();
	    	}
	    }catch(Exception e){
	    	System.out.println(e);
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








