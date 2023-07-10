package com.guestbook2.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.guestbook2.db.DAO;
import com.guestbook2.db.VO;

public class UpdateCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String idx = request.getParameter("idx");
		VO vo = DAO.getOneList(idx);
		if(vo != null) {
			request.setAttribute("vo", vo);
			
			return "08_guestbook2/update.jsp";
		}else {
			return "08_guestbook2/error.jsp";
		}
	}
}
