package cn.kgc.tangcco.tcas2282.haoyu.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginGetNameServlet")
public class LoginGetNameServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginGetNameServlet() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String userName = (String) request.getSession().getAttribute("name");
		System.out.println(userName);
		out.print(userName);
	}

}
