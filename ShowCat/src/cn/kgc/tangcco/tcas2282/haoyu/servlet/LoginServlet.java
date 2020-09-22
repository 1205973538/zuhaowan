package cn.kgc.tangcco.tcas2282.haoyu.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.kgc.tangcco.tcas2282.haoyu.entity.UserB;
import cn.kgc.tangcco.tcas2282.haoyu.service.userService;
import cn.kgc.tangcco.tcas2282.haoyu.service.impl.userServiceImpl;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginServlet() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		userService us = new userServiceImpl();
		// UserB user = new UserB();
		// HttpSession session = request.getSession();
		String userName = request.getParameter("userName");
		String pwd = request.getParameter("pwd");
		boolean flag = us.login(userName, pwd);
		if (flag==true) {
			UserB u = us.getUser(userName, pwd);
			request.getSession().setAttribute("name", u.getUName());
			out.print(flag);
		}else {
			out.print(flag);
		}
//		if (flag == true) {
//			if (SessionListener.sessionMap.get(user.getUserName()) != null) {
//				// 将已经登陆的信息拿掉，将新的用户登录信息放进去
//				ForceLogoutUtils.forceUserLogout(user.getUserName());
//				SessionListener.sessionMap.put(user.getUserName(), session);
//				
//			}
//			// 该账号未登录,直接放进去
//			else {
//				SessionListener.sessionMap.put(user.getUserName(), session);
//			}
//			request.getSession().setAttribute("name", userName);
//			// 声明一个用户属性，储存用户对象
//			session.setAttribute("users", user);
//			// 转发到‘登陆成功’页面
//			//request.getRequestDispatcher("index.jsp").forward(request, response);
//		}
	}

}
