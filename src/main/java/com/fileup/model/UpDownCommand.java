package com.fileup.model;

import java.io.File;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class UpDownCommand {
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 실제 파일 업로드 부분
		try {
			// 실제 저장 위치 구하기 
			String realPath = request.getServletContext().getRealPath("upload");
			
			// 파라미터를 받을 때 request 대신에 사용할 객체 cos에서 지원
			MultipartRequest mr =
					new MultipartRequest(request,
							realPath,        // 저장위치 
							100*1024*1024,   // 업로드 크기 (100MB)
							"utf-8",
							new DefaultFileRenamePolicy() // 파일이 겹치면 파일 이름뒤에 숫자를 붙인다.
							);
			
			// 파라미터 받자 
			String name = mr.getParameter("name");
			// 올릴 당시의 이름
			String f_name = mr.getOriginalFileName("f_name");
			// 저장할 당시의 이름 
			String f_name2 = mr.getFilesystemName("f_name");
			String contentType = mr.getContentType("f_name");
			
			File file = new File(realPath, f_name2);
			long f_size = file.length(); // 파일의 크기를 byte 단위로 변환
			long f_last = file.lastModified();
			
			SimpleDateFormat day = 
					new SimpleDateFormat("yyyy-MM-dd HH:mm:ss E");
			String f_last2 = day.format(f_last);
			
			
			request.setAttribute("name", name);
			request.setAttribute("f_name", f_name);
			request.setAttribute("f_name2", f_name2);
			request.setAttribute("contentType", contentType);
			request.setAttribute("f_size", f_size);
			request.setAttribute("f_last", f_last);
			request.setAttribute("f_last2", f_last2);
			
		} catch (Exception e) {
		}
		return "fileUpDown/result.jsp";
	}
}








