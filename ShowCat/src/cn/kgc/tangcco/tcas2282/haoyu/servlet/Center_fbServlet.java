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

import cn.kgc.tangcco.tcas2282.haoyu.entity.GameNum;
import cn.kgc.tangcco.tcas2282.haoyu.service.userService;
import cn.kgc.tangcco.tcas2282.haoyu.service.impl.userServiceImpl;

@WebServlet("/Center_fbServlet")
public class Center_fbServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Center_fbServlet() {
		super();
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		userService ss = new userServiceImpl();
		List<GameNum> list = ss.gnList();
		String a  = JSON.toJSONString(list);
		out.print(a);
		
	}

}
