package com.guestbook.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.guestbook.db.DAO;
import com.guestbook.db.VO;

public class OneListCommand implements Command{
	@Override
		public String exec(HttpServletRequest request, HttpServletResponse response) {
			// 일처리 = (DB)
			String idx = request.getParameter("idx");
			VO vo = DAO.getOneList(idx);
		
			// 저장 
		     request.setAttribute("vo", vo);
		
			return "guestbook/onelist.jsp";
		}	
}
