package cn.kgc.tangcco.tcas2282.haoyu.test;


import cn.kgc.tangcco.tcas2282.haoyu.entity.UserB;
import cn.kgc.tangcco.tcas2282.haoyu.service.userService;
import cn.kgc.tangcco.tcas2282.haoyu.service.impl.userServiceImpl;

public class text {
	public static void main(String[] args) {
		userService us = new userServiceImpl();
		UserB u = us.getUser("小白");
		System.out.println(u.getUName());
	}
}
