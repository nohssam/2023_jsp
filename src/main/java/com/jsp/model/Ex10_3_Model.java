package com.jsp.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Ex10_3_Model implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 장바구니 비우기
		// 세션 구하기 
		HttpSession ss = request.getSession();
		
		// 방법1) 세션 초기화
		ss.invalidate();
		
		// 방법2_ 리스트 속성만 삭제
		// ss.removeAttribute("list");
		
		return "view02/ex10_session_cart.jsp";
	}
}
