package cn.kgc.tangcco.tcas2282.haoyu.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;

import cn.kgc.tangcco.tcas2282.haoyu.entity.Shop;
import cn.kgc.tangcco.tcas2282.haoyu.service.userService;
import cn.kgc.tangcco.tcas2282.haoyu.service.impl.userServiceImpl;

@WebServlet("/ShowServlet")
public class ShowServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ShowServlet() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		userService us = new userServiceImpl();
		int id = (int) request.getSession().getAttribute("id");
		Shop s = us.getShop(id);
		String s1 = JSON.toJSONString(s);
		System.out.println(s1);
		out.print(s1);
	}

}
