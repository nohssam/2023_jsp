package com.servlet.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GetLuckyCommand implements Command{
  @Override
  public String exec(HttpServletRequest request, HttpServletResponse response) {
	 // 일처리
	 int lucky = (int)(Math.random()*100)+1;
	 
	 // 화면에 보여줄 내용을 request.setAttribute를 이용해서 저장하자 
	 request.setAttribute("lucky", lucky);
	 
	 
	 // 결과를 보여줄 페이지 지정 
	return "04_servlet/result02.jsp";
  }
}
