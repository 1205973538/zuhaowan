package cn.kgc.tangcco.tcas2282.haoyu.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.kgc.tangcco.tcas2282.haoyu.common.HttpClientUtil;
import cn.kgc.tangcco.tcas2282.haoyu.entity.UserB;
import cn.kgc.tangcco.tcas2282.haoyu.service.userService;
import cn.kgc.tangcco.tcas2282.haoyu.service.impl.userServiceImpl;

@WebServlet("/CheckServlet")
public class CheckServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;

	public CheckServlet() {
		super();
	}

	public void checkMoney(HttpServletRequest request, HttpServletResponse response) throws IOException {
		PrintWriter out = response.getWriter();
		String uName = request.getParameter("uName");
		double zmoney = Double.valueOf(request.getParameter("zmoney"));
		userService us = new userServiceImpl();
		UserB ub = us.getUser(uName);
		if (ub.getGold() < zmoney) {
			out.print(false);
		} else {
			out.print(ub.getGold() - zmoney);
		}
	}

	public void checkShopList(HttpServletRequest request, HttpServletResponse response) throws IOException {
		PrintWriter out = response.getWriter();
		int id = Integer.valueOf(request.getParameter("id"));
		userServiceImpl us = new userServiceImpl();
		boolean flag = us.checkShop(id);
		out.print(flag);
	}

	public void checkHand(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 用户名
		String Uid = "短信试作型";
		// 接口安全秘钥
		String Key = "d41d8cd98f00b204e980";
		// 手机号码，多个号码如13800000000,13800000001,13800000002
		String smsMob =request.getParameter("smsMob");
		System.out.println(smsMob);
		//随机数验证码
		int num = (int) ((Math.random() * 9 + 1) * 100000);
		// 短信内容
		String smsText = "【租号玩】尊敬的用户，您的验证码是" + num + "。你正在注册租号玩平台账号，五分钟内有效";
		HttpClientUtil client = HttpClientUtil.getInstance();
		//UTF发送
		int result = client.sendMsgUtf8(Uid, Key, smsText, smsMob);
		if(result>0){
			System.out.println("发送成功！=="+result);
		}else{
			System.out.println(client.getErrorMsg(result));
		}
	}
}
