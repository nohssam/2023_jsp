package com.servlet.model;

import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GetTodayCommand implements Command{
  @Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 일처리 (오늘 날짜 구하기)
	    Calendar now = Calendar.getInstance();
		int year = now.get(Calendar.YEAR);
		int month = now.get(Calendar.MONTH) + 1 ;
		int day = now.get(Calendar.DATE);
		
		// 화면에 보여줄 내용을 request.setAttribute를 이용해서 저장하자 
		request.setAttribute("year", year);
		request.setAttribute("month", month);
		request.setAttribute("day", day);
		
	    // 결과를 보여줄 페이지 지정
		return "view01/result01.jsp";
	}
}
