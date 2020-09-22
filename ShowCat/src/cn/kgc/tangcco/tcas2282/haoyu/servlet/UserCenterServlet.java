package cn.kgc.tangcco.tcas2282.haoyu.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;

import cn.kgc.tangcco.tcas2282.haoyu.entity.Shop;
import cn.kgc.tangcco.tcas2282.haoyu.entity.UserB;
import cn.kgc.tangcco.tcas2282.haoyu.service.userService;
import cn.kgc.tangcco.tcas2282.haoyu.service.impl.userServiceImpl;

@WebServlet("/UserCenterServlet")
public class UserCenterServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;

	// 查找用戶個人信息
	public void select(HttpServletRequest request, HttpServletResponse response) {
		String uName = null;
		try {
			uName = (String) request.getSession().getAttribute("name");
			if (uName != null) {
				userService us = new userServiceImpl();
				UserB u = us.getUser(uName);
				printJson(request, response, u);
			} else {
				response.getWriter().print(false);
			}

		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	// 修改金额
	public void updataAddMoney(HttpServletRequest request, HttpServletResponse response) {
		userService us = new userServiceImpl();
		String uName = request.getParameter("uName");
		double gold = Double.valueOf(request.getParameter("gold"));
		boolean flag = us.cMoney(uName, gold);
		try {
			response.getWriter().print(flag);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	// 修改个人状态
	public void updataStatus(HttpServletRequest request, HttpServletResponse response) throws IOException {
		userService us = new userServiceImpl();
		int status = Integer.valueOf(request.getParameter("status"));
		int id = Integer.valueOf(request.getParameter("id"));
		String uName = request.getParameter("uName");
		Shop s = us.updateShopStatus(id, status,uName);
		String s1 = JSON.toJSONString(s);
		response.getWriter().print(s1);
	}
	// 查找某个人的发布的上商品
	public void getShopList(HttpServletRequest request, HttpServletResponse response) throws IOException {
		int id = Integer.valueOf(request.getParameter("id"));
		int currentPage = Integer.valueOf(request.getParameter("currentPage"));
		int pageSize = Integer.valueOf(request.getParameter("pageSize"));
		userService us = new userServiceImpl();
		UserB u = us.getShopList(currentPage, pageSize, id);
		printJson(request, response, u);
	}

	// 查找商品总数
	public void getShopCount(HttpServletRequest request, HttpServletResponse response) throws IOException {
		int id = Integer.valueOf(request.getParameter("id"));
		userService us = new userServiceImpl();
		int totalCount = us.getShopCount(id);
		response.getWriter().print(totalCount);
	}

	// 删除商品
	public void deleteShop(HttpServletRequest request, HttpServletResponse response) throws IOException {
		int id = Integer.valueOf(request.getParameter("id"));
		userServiceImpl us = new userServiceImpl();
		boolean flag = us.deleteShop(id);
		response.getWriter().print(flag);
	}

	// 删除商品
	public void updateShop(HttpServletRequest request, HttpServletResponse response) throws IOException {
		int id = Integer.valueOf(request.getParameter("id"));
		int number = Integer.valueOf(request.getParameter("number"));
		String pwd = request.getParameter("pwd");
		String pName = request.getParameter("pName");
		String title = request.getParameter("title");
		String ms = request.getParameter("ms");
		double money = Double.valueOf(request.getParameter("money"));
		userServiceImpl us = new userServiceImpl();
		boolean flag = us.updateShop(id, number, pwd, pName, title, ms, money);
		response.getWriter().print(flag);
	}

	// 收藏商品
	public void scShop(HttpServletRequest request, HttpServletResponse response) throws IOException {
		int userId = Integer.valueOf(request.getParameter("userId"));
		int shopId = Integer.valueOf(request.getParameter("shopId"));
		userServiceImpl us = new userServiceImpl();
		int flag = us.scShop(userId, shopId);
		response.getWriter().print(flag);
	}

	// 获得收藏商品列表
	public void scShopList(HttpServletRequest request, HttpServletResponse response) throws IOException {
		int userId = Integer.valueOf(request.getParameter("userId"));
		int currentPage = Integer.valueOf(request.getParameter("currentPage"));
		int pageSize = Integer.valueOf(request.getParameter("pageSize"));
		userServiceImpl us = new userServiceImpl();
		List<Shop> l = us.getSCShopList(userId, currentPage, pageSize);
		if (l.size() == 0) {
			printJson(request, response, null);
		} else {
			printJson(request, response, l);
		}
	}

	// 移除商品
	public void deletescShop(HttpServletRequest request, HttpServletResponse response) throws IOException {
		int userId = Integer.valueOf(request.getParameter("userId"));
		int shopId = Integer.valueOf(request.getParameter("shopId"));
		userServiceImpl us = new userServiceImpl();
		boolean flag = us.deleteSCShop(userId, shopId);
		System.out.println(flag);
		response.getWriter().print(flag);
	}

	// 获取收藏总条数
	public void count(HttpServletRequest request, HttpServletResponse response) throws IOException {
		int userId = Integer.valueOf(request.getParameter("userId"));
		userServiceImpl us = new userServiceImpl();
		int totalCount = us.getTotalSCShopCount(userId);
		response.getWriter().print(totalCount);
	}
}
