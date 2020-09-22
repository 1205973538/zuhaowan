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

@WebServlet("/CheckUNameServlet")
public class CheckUNameServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public CheckUNameServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		userService us = new userServiceImpl();
		String uName = request.getParameter("uName");
		boolean flag = us.checkUName(uName);
		out.print(flag);
	}

}
