package cn.kgc.tangcco.tcas2282.haoyu.service;

import java.util.List;

import cn.kgc.tangcco.tcas2282.haoyu.entity.GameNum;
import cn.kgc.tangcco.tcas2282.haoyu.entity.Shop;
import cn.kgc.tangcco.tcas2282.haoyu.entity.UserB;

public interface userService {

	// 注册
	boolean userAdd(UserB user);

	// 登录
	boolean login(String userName, String pwd);

	// 查询
	List<Shop> shopList(int currentPage, int pageSize, String name);

	//
	int totalCount(String name);

	//
	List<GameNum> gnList();

	//
	boolean addShop(Shop s);

	//
	Shop getShop(int id);

	// 查找个人信息
	UserB getUser(String userName, String pwd);

	// 用户名唯一验证
	boolean checkUName(String uName);

	// 账号唯一验证
	boolean checkUserName(String userName);

	// 查找个人信息
	UserB getUser(String uName);

	// 充值
	boolean cMoney(String uName, double gold);

	// 修改账号状态
	Shop updateShopStatus(int id, int status,String uName);

	// 根据用户名查到他手下的商品
	UserB getShopList(int currentPage, int pageSize, int id);

	// 查询总条数
	int getShopCount(int id);

	// 是否商品验证
	boolean checkShop(int id);

	// 根据ID下架账号
	boolean deleteShop(int id);

	// 根据商品ID修改商品信息
	boolean updateShop(int id, int number, String pwd, String pName, String title, String ms, double money);
	//模糊查询的
	List<Shop> moHuList(int currentPage,int pageSize,String title);
	//模糊查询的总条数
	int moHuTotalCount(String title);
	//收藏商品的方法
	int scShop(int userId,int shopId);
	//收藏列表方法
	List<Shop> getSCShopList(int userId,int currentPage,int pageSize);
	//收藏列表总条数
	int getTotalSCShopCount(int userId);
	//移除收藏
	boolean deleteSCShop(int userId,int shopId);
}
