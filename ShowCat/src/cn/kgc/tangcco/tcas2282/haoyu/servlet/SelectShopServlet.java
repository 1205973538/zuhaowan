package cn.kgc.tangcco.tcas2282.haoyu.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;

import cn.kgc.tangcco.tcas2282.haoyu.entity.Shop;
import cn.kgc.tangcco.tcas2282.haoyu.service.userService;
import cn.kgc.tangcco.tcas2282.haoyu.service.impl.userServiceImpl;

@WebServlet("/SelectShopServlet")
public class SelectShopServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SelectShopServlet() {
		super();
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 回调对象
		PrintWriter out = response.getWriter();
		// 创建Service层对象
		userService us = new userServiceImpl();
		int currentPage = Integer.valueOf(request.getParameter("currentPage"));
		int pageSize = Integer.valueOf(request.getParameter("pageSize"));
		String name = request.getParameter("name");
		List<Shop> sList = us.shopList(currentPage, pageSize,name);
		String list = JSON.toJSONString(sList);
		out.print(list);
	}

}
