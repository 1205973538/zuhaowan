package cn.kgc.tangcco.tcas2282.haoyu.common;

import java.util.Enumeration;

import javax.servlet.http.HttpSession;

public class ForceLogoutUtils {
	public static void forceUserLogout(String username) {
		//判断是否为空，如果为空，则清除Map中数据
		if (SessionListener.sessionMap.get(username) != null) {
			HttpSession session = SessionListener.sessionMap.get(username);
			SessionListener.sessionMap.remove(username);
			//声明枚举类型的集合
			Enumeration e = session.getAttributeNames();
			//进行循环删除
			while (e.hasMoreElements()) {
				String sessionName = (String) e.nextElement();
				session.removeAttribute(sessionName);
			}
			session.invalidate();
		}
	}
}
