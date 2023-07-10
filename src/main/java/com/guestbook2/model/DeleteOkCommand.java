package com.guestbook2.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.guestbook2.db.DAO;

public class DeleteOkCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String idx = request.getParameter("idx");
		int result = DAO.getDelete(idx);
		if(result>0) {
			// 첨부된 이미지가 있으면 삭제하기 (숙제)
			return "GuestBook2?cmd=list";
		}else {
			return "08_guestbook2/error.jsp";
		}
	}
}
