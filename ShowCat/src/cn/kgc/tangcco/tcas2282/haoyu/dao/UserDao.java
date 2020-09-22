package cn.kgc.tangcco.tcas2282.haoyu.dao;

import java.util.List;

import cn.kgc.tangcco.tcas2282.haoyu.entity.GameNum;
import cn.kgc.tangcco.tcas2282.haoyu.entity.Shop;
import cn.kgc.tangcco.tcas2282.haoyu.entity.UserB;

public interface UserDao {

	//注册
	int userAdd(UserB user);
	//登陆
	int login(String userName,String pwd);
	//查询所有商品信息/分页
	List<Shop> shopList(int currentPage,int pageSize,String name);
	//查找总条数
	int totalCount(String name);
	//查找总游戏名称
	List<GameNum> gnList();
	//账号发布
	int addShop(Shop s);
	//查询单个商品信息
	Shop getShop(int id);
	//查找个人信息
	UserB getUser(String userName,String pwd);
	//用户名唯一验证
	int checkUName(String uName);
	//账号唯一验证
	int checkUserName(String userName);
	//查找个人信息
	UserB getUser(String uName);
	//充值
	int cMoney(String uName,double gold);
	//修改账号状态
	Shop updateShopStatus(int id,int status,String uName);
	//根据用户名查到他手下的商品
	UserB getShopList(int currentPage,int pageSize,int id);
	//查询总条数
	int getShopCount(int id);
	//是否商品验证
	int checkShop(int id);
	//根据ID下架账号
	int deleteShop(int id);
	//根据商品ID修改商品信息
	int updateShop(int id,int number,String pwd,String pName,String title,String ms,double money);
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
	int deleteSCShop(int userId,int shopId);
}
