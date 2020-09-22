package cn.kgc.tangcco.tcas2282.haoyu.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Select_to_showServlet")
public class Select_to_showServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Select_to_showServlet() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		int id = Integer.valueOf(request.getParameter("id"));
		request.getSession().setAttribute("id", id);
		out.print(id);
	}

}
