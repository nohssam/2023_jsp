package com.guestbook.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.guestbook.db.DAO;
import com.guestbook.db.VO;

public class ListCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
	    // 일 처리 => DB 정보 가져오기
		
		// 전체 목록 가져오기 
		List<VO> list = DAO.getList();
		
		// 저장
		request.setAttribute("list", list);
		
		// 결과 보여줄 페이지 
		return "guestbook/list.jsp";
	}
}
