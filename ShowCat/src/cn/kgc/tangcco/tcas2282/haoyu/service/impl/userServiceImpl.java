package cn.kgc.tangcco.tcas2282.haoyu.service.impl;

import java.util.List;

import cn.kgc.tangcco.tcas2282.haoyu.dao.UserDao;
import cn.kgc.tangcco.tcas2282.haoyu.dao.impl.UserDaoImpl;
import cn.kgc.tangcco.tcas2282.haoyu.entity.GameNum;
import cn.kgc.tangcco.tcas2282.haoyu.entity.Shop;
import cn.kgc.tangcco.tcas2282.haoyu.entity.UserB;
import cn.kgc.tangcco.tcas2282.haoyu.service.userService;

public class userServiceImpl implements userService {

	UserDao ud = new UserDaoImpl();

	public boolean userAdd(UserB user) {
		if (ud.userAdd(user) > 0) {
			return true;
		}
		return false;
	}

	@Override
	public boolean login(String userName, String pwd) {
		if (ud.login(userName, pwd) > 0) {
			System.out.println(ud.login(userName, pwd));
			return true;
		}
		return false;
	}

	@Override
	public int totalCount(String name) {
		return ud.totalCount(name);
	}

	@Override
	public List<Shop> shopList(int currentPage, int pageSize, String name) {
		return ud.shopList(currentPage, pageSize, name);
	}

	@Override
	public List<GameNum> gnList() {
		return ud.gnList();
	}

	@Override
	public boolean addShop(Shop s) {
		if (ud.addShop(s) > 0) {
			return true;
		}
		return false;
	}

	@Override
	public Shop getShop(int id) {
		return ud.getShop(id);
	}

	@Override
	public UserB getUser(String userName, String pwd) {
		return ud.getUser(userName, pwd);
	}

	@Override
	public boolean checkUName(String uName) {
		if (ud.checkUName(uName) > 0) {
			return false;
		}
		return true;
	}

	@Override
	public boolean checkUserName(String userName) {
		if (ud.checkUserName(userName) > 0) {
			return false;
		}
		return true;
	}

	@Override
	public UserB getUser(String uName) {
		return ud.getUser(uName);
	}

	@Override
	public boolean cMoney(String uName, double gold) {
		if (ud.cMoney(uName, gold) > 0) {
			return true;
		}
		return false;
	}

	@Override
	public Shop updateShopStatus(int id, int status,String uName) {
		return ud.updateShopStatus(id, status,uName);
	}

	@Override
	public UserB getShopList(int currentPage, int pageSize, int id) {
		return ud.getShopList(currentPage, pageSize, id);
	}

	@Override
	public boolean checkShop(int id) {
		if (ud.checkShop(id) > 0) {
			return true;
		}
		return false;
	}

	@Override
	public int getShopCount(int id) {
		return ud.getShopCount(id);
	}

	@Override
	public boolean deleteShop(int id) {
		if (ud.deleteShop(id) > 0) {
			return true;
		}
		return false;
	}

	@Override
	public boolean updateShop(int id, int number, String pwd, String pName, String title, String ms, double money) {
		if (ud.updateShop(id, number, pwd, pName, title, ms, money) > 0) {
			return true;
		}
		return false;
	}

	@Override
	public List<Shop> moHuList(int currentPage, int pageSize, String title) {
		return ud.moHuList(currentPage, pageSize, title);
	}

	@Override
	public int moHuTotalCount(String title) {
		return ud.moHuTotalCount(title);
	}

	@Override
	public int scShop(int userId, int shopId) {
		return ud.scShop(userId, shopId);
	}

	@Override
	public List<Shop> getSCShopList(int userId,int currentPage,int pageSize) {
	return ud.getSCShopList(userId, currentPage, pageSize);
	}
	@Override
	public int getTotalSCShopCount(int userId) {
		return ud.getTotalSCShopCount(userId);
	}
	@Override
	public boolean deleteSCShop(int userId, int shopId) {
		if (ud.deleteSCShop(userId, shopId)>0) {
			return true;
		}
		return false;
	}
	
}
