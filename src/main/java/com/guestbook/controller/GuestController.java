package com.guestbook.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.guestbook.model.Command;
import com.guestbook.model.DeleteCommand;
import com.guestbook.model.DeleteOkCommand;
import com.guestbook.model.ListCommand;
import com.guestbook.model.OneListCommand;
import com.guestbook.model.UpdateCommand;
import com.guestbook.model.UpdateOkCommand;
import com.guestbook.model.WriteCommand;
import com.guestbook.model.WriteOkCommand;

@WebServlet("/GuestController")
public class GuestController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String cmd = request.getParameter("cmd");
		Command comm = null;
		if(cmd.equals("list")) {
			comm = new ListCommand();
		}else if(cmd.equals("write")) {
			comm = new WriteCommand();
		}else if(cmd.equals("write_ok")) {
			comm = new WriteOkCommand();
		}else if(cmd.equals("onelist")) {
			comm = new OneListCommand();
		}else if(cmd.equals("update")) {
			comm = new UpdateCommand();
		}else if(cmd.equals("update_ok")) {
			comm = new UpdateOkCommand();
		}else if(cmd.equals("delete")) {
			comm = new DeleteCommand();
		}else if(cmd.equals("delete_ok")) {
			comm = new DeleteOkCommand();
		}
		String path = comm.exec(request, response);
		request.getRequestDispatcher(path).forward(request, response);
	}
}










