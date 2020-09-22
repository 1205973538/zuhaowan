package cn.kgc.tangcco.tcas2282.haoyu.common;

import java.util.HashMap;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import cn.kgc.tangcco.tcas2282.haoyu.entity.UserB;

//实现session监听器接口
public class SessionListener implements HttpSessionListener {
	/**
	 * 该HashMap以用户名-HttpSession对象存储一个账号只能被一个人登陆的信息。
	 */
	public static HashMap<String, HttpSession> sessionMap = new HashMap<String, HttpSession>();
	
	//创建session的时候
	@Override
	public void sessionCreated(HttpSessionEvent se) {
		HttpSession session = se.getSession();
	}
	//删除session的时候调用删除方法，彻底移除
	@Override
	public void sessionDestroyed(HttpSessionEvent se) {
		HttpSession session = se.getSession();
		delSession(session);
		System.out.println("你下线了！");
	}
	
	private void delSession(HttpSession session) {
		if (session != null) {
			// 删除单一登录中记录的变量
			if (session.getAttribute("users") != null) {
				UserB user = (UserB) session.getAttribute("users");
				SessionListener.sessionMap.remove(user.getUserName());
			}
		}

	}

}
