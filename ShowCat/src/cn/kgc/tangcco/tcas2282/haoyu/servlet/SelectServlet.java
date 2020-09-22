package cn.kgc.tangcco.tcas2282.haoyu.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.kgc.tangcco.tcas2282.haoyu.entity.Shop;
import cn.kgc.tangcco.tcas2282.haoyu.service.impl.userServiceImpl;

@WebServlet("/SelectServlet")
public class SelectServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	userServiceImpl us  = new userServiceImpl();
	public void moList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int currentPage  = Integer.valueOf(request.getParameter("currentPage"));
		int pageSize = Integer.valueOf(request.getParameter("pageSize"));
		String title = request.getParameter("title");
		List<Shop> a = us.moHuList(currentPage, pageSize, title);
		printJson(request, response, a);
	}
	public void moCount(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String title = request.getParameter("title");
		int totalCount = us.moHuTotalCount(title);
		response.getWriter().print(totalCount);
	}
}
