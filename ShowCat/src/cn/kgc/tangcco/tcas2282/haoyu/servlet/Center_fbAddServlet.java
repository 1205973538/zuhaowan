package cn.kgc.tangcco.tcas2282.haoyu.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.kgc.tangcco.tcas2282.haoyu.entity.Shop;
import cn.kgc.tangcco.tcas2282.haoyu.service.userService;
import cn.kgc.tangcco.tcas2282.haoyu.service.impl.userServiceImpl;

@WebServlet("/Center_fbAddServlet")
public class Center_fbAddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public Center_fbAddServlet() {
        super();
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	PrintWriter out = response.getWriter();
	String name = request.getParameter("name");
	double money = Double.valueOf(request.getParameter("money"));
	String leixing = request.getParameter("leixing");
	String title = request.getParameter("title");
	int	number = Integer.valueOf(request.getParameter("number"));
	String pwd = request.getParameter("pwd");
	String ms= request.getParameter("ms");
	String pName = request.getParameter("pName");
	int id = Integer.valueOf(request.getParameter("id"));
	userService us  = new userServiceImpl();
	boolean flag = us.addShop(new Shop(0,name, money, leixing, title, number, pwd, ms, pName,id));
	System.out.println(flag);
	out.print(flag);
	}

}
