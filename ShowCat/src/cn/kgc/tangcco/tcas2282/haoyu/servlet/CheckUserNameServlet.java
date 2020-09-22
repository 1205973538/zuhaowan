package cn.kgc.tangcco.tcas2282.haoyu.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.kgc.tangcco.tcas2282.haoyu.service.userService;
import cn.kgc.tangcco.tcas2282.haoyu.service.impl.userServiceImpl;

@WebServlet("/CheckUserNameServlet")
public class CheckUserNameServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public CheckUserNameServlet() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		userService us = new userServiceImpl();
		String userName = request.getParameter("userName");
		boolean flag = us.checkUserName(userName);
		out.print(flag);
	}

}
