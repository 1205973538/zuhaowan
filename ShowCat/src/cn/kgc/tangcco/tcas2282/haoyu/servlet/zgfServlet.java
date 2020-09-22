package cn.kgc.tangcco.tcas2282.haoyu.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/zgfServlet")
public class zgfServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public zgfServlet() {
        super();
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	int money = Integer.valueOf(request.getParameter("money"));
	double zgold = Double.valueOf(request.getParameter("zgold"));
	String uName = request.getParameter("uName");
	request.getSession().setAttribute("money1", money);
	request.getSession().setAttribute("zgold1", zgold);
	request.getSession().setAttribute("uName1", uName);
	request.getRequestDispatcher("index1.jsp").forward(request, response);
	}

}
