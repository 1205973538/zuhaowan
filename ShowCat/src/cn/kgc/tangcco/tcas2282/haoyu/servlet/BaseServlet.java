package cn.kgc.tangcco.tcas2282.haoyu.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.Method;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;

@WebServlet("/BaseServlet")
public class BaseServlet extends HttpServlet {
	private static final long serialVersionUID = -6037836144572011201L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			// 获取请求标识
			String methodName = request.getParameter("method");
			// 获取指定类的字节码对象
			Class<? extends BaseServlet> clazz = this.getClass();// 这里的this指的是继承BaseServlet对象
			// 通过类的字节码对象获取方法的字节码对象
			Method method = clazz.getMethod(methodName, HttpServletRequest.class, HttpServletResponse.class);
			// 让方法执行
			method.invoke(this, request, response);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

	/**
	 * 请求转发
	 * 
	 * @param request  HttpServletRequest
	 * @param response HttpServletResponse
	 * @param path     跳转路径
	 */
	public void forword(HttpServletRequest request, HttpServletResponse response, String path) {
		try {
			request.getRequestDispatcher(path).forward(request, response);// 转发代码
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 网页重定向
	 * 
	 * @param request  HttpServletRequest
	 * @param response HttpServletResponse
	 * @param location 跳转路径
	 */
	public void redirect(HttpServletRequest request, HttpServletResponse response, String location) {
		try {
			response.sendRedirect(location);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 向客户端js回调普通文本
	 * 
	 * @param request  HttpServletRequest
	 * @param response HttpServletResponse
	 * @param json     传入的字符串
	 */
	public void printJson(HttpServletRequest request, HttpServletResponse response, String json) {
		try {
			PrintWriter out = response.getWriter();
			out.print(json);
			out.flush();
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 将对象转为json字符串向js客户端输出
	 * 
	 * @param request  HttpServletRequest
	 * @param response HttpServletResponse
	 * @param object   传入的对象
	 */
	public void printJson(HttpServletRequest request, HttpServletResponse response, Object object) {
		printJson(request, response, JSON.toJSONString(object));
	}

}
