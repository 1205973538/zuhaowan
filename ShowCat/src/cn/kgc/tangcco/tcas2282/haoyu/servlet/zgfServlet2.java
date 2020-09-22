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

@WebServlet("/zgfServlet2")
public class zgfServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public zgfServlet2() {
        super();
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	userService us = new userServiceImpl();
	String uName = request.getSession().getAttribute("uName1").toString();
	double gold = (Double)request.getSession().getAttribute("zgold1");
	boolean flag = us.cMoney(uName, gold);
	try {
		response.getWriter().print(flag);
	} catch (IOException e) {
		e.printStackTrace();
	}
	request.getRequestDispatcher("userCenter.jsp").forward(request, response);
	}

}
