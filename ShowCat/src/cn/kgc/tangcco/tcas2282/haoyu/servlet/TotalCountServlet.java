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

@WebServlet("/TotalCountServlet")
public class TotalCountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public TotalCountServlet() {
        super();
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		userService us = new userServiceImpl();
		String name = request.getParameter("name");
		out.print(us.totalCount(name));
	}

}
