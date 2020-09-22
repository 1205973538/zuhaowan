package cn.kgc.tangcco.tcas2282.haoyu.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import com.sun.org.apache.bcel.internal.generic.NEW;

import cn.kgc.tangcco.tcas2282.haoyu.common.DBUtilC3P0;
import cn.kgc.tangcco.tcas2282.haoyu.dao.UserDao;
import cn.kgc.tangcco.tcas2282.haoyu.entity.GameNum;
import cn.kgc.tangcco.tcas2282.haoyu.entity.Shop;
import cn.kgc.tangcco.tcas2282.haoyu.entity.UserB;

public class UserDaoImpl implements UserDao {

	QueryRunner qr = new QueryRunner(DBUtilC3P0.getDataSource());

	// 注册
	@Override
	public int userAdd(UserB user) {
		String sql = "insert userb(userName,pwd,email,uName)values(?,?,?,?)";
		try {
			return qr.update(sql, user.getUserName(), user.getPwd(), user.getEmail(), user.getUName());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return -1;
	}

	// 登录
	@Override
	public int login(String userName, String pwd) {
		String sql = "select count(*) from userb where userName=? and pwd=?";
		try {
			return qr.query(sql, new ScalarHandler<Long>(), userName, pwd).intValue();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public List<Shop> shopList(int currentPage, int pageSize, String name) {
		String sql;
		if (name.equals("无")) {
			sql = "select * from shop  where status = 0 limit ?,? ";
			try {
				return qr.query(sql, new BeanListHandler<>(Shop.class), (currentPage - 1) * pageSize, pageSize);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} else {
			sql = "select * from shop where status=0 and name = ? limit ?,?";
			try {
				return qr.query(sql, new BeanListHandler<>(Shop.class), name, (currentPage - 1) * pageSize, pageSize);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return null;
	}

	@Override
	public int totalCount(String name) {
		String sql;
		if (name.equals("无")) {
			sql = "select count(*)from shop";
			try {
				return qr.query(sql, new ScalarHandler<Long>()).intValue();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} else {
			sql = "select count(*)from shop where name =?";
			try {
				return qr.query(sql, new ScalarHandler<Long>(), name).intValue();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return -1;
	}

//查询商品名字
	@Override
	public List<GameNum> gnList() {
		String sql = "select * from game";
		try {
			return qr.query(sql, new BeanListHandler<>(GameNum.class));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	// 添加商品
	@Override
	public int addShop(Shop s) {
		String sql = "insert shop(name,money,leixing,title,number,pwd,ms,pName,uid)values(?,?,?,?,?,?,?,?,?)";
		try {
			return qr.update(sql, s.getName(), s.getMoney(), s.getLeixing(), s.getTitle(), s.getNumber(), s.getPwd(),
					s.getMs(), s.getPName(), s.getUid());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
		}
		return -1;
	}

	@Override
	public Shop getShop(int id) {
		String sql = "select * from shop where id=?";

		try {
			return qr.query(sql, new BeanHandler<>(Shop.class), id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public UserB getUser(String userName, String pwd) {
		String sql = "select * from userb where userName=? and pwd=?";
		try {
			return qr.query(sql, new BeanHandler<>(UserB.class), userName, pwd);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public int checkUName(String uName) {
		String sql = "select count(*) from userb where uName=?";
		try {
			return qr.query(sql, new ScalarHandler<Long>(), uName).intValue();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public int checkUserName(String userName) {
		String sql = "select count(*) from userb where userName=?";
		try {
			return qr.query(sql, new ScalarHandler<Long>(), userName).intValue();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public UserB getUser(String uName) {
		String sql = "select * from userb where uName =?";
		try {
			return qr.query(sql, new BeanHandler<>(UserB.class), uName);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public int cMoney(String uName, double gold) {
		String sql = "update userb set gold=? where uName=?";
		try {
			return qr.update(sql, gold, uName);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public Shop updateShopStatus(int id, int status, String uName) {
		String sql = "update shop set status = ? where id = ?";
		try {
			int a = qr.update(sql, status, id);
			if (a > 0) {
				String sqlzNum1 = "select * from userb where uName = ?";
				String sqlzNum2 = "update userb set zNum = ? where uName = ?";
				UserB ub = qr.query(sqlzNum1, new BeanHandler<>(UserB.class), uName);
				int zNum = ub.getZNum() + 1;
				qr.update(sqlzNum2, zNum, uName);
				String sql1 = "select number,pwd from shop where id = ?";
				return qr.query(sql1, new BeanHandler<>(Shop.class), id);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public UserB getShopList(int currentPage, int pageSize, int id) {
		String sql1 = "select * from userb where id = ?  ";
		String sql2 = "select * from shop where uid = ? order by id desc limit ?,? ";
		List<Shop> list;
		try {
			list = qr.query(sql2, new BeanListHandler<>(Shop.class), id, (currentPage - 1) * pageSize, pageSize);
			UserB b = qr.query(sql1, new BeanHandler<>(UserB.class), id);
			b.setShopList(list);
			return b;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public int checkShop(int id) {
		String sql = "select count(*) from shop where uid=?";
		try {
			return qr.query(sql, new ScalarHandler<Long>(), id).intValue();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public int getShopCount(int id) {
		String sql = "select count(*) from shop where uid = ?";
		try {
			return qr.query(sql, new ScalarHandler<Long>(), id).intValue();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public int deleteShop(int id) {
		String sql = "delete from shop where id = ?";
		try {
			return qr.update(sql, id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public int updateShop(int id, int number, String pwd, String pName, String title, String ms, double money) {
		String sql = "update shop set number=?,pwd=?,pName=?,title=?,ms=?,money=? where id = ?";
		try {
			return qr.update(sql, number, pwd, pName, title, ms, money, id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public List<Shop> moHuList(int currentPage, int pageSize, String title) {
		String sql = "select * from shop where title like ? limit ?,?";
		try {
			return qr.query(sql, new BeanListHandler<>(Shop.class), "%" + title + "%", (currentPage - 1) * pageSize,
					pageSize);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
		}
		return null;
	}

	@Override
	public int moHuTotalCount(String title) {
		String sql = "select count(*) from shop where title like ?";
		try {
			return qr.query(sql, new ScalarHandler<Long>(), "%" + title + "%").intValue();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public int scShop(int userId, int shopId) {
		String sql = "select count(*) from car where userId = ? and shopId=?";
		try {
			int flag = qr.query(sql, new ScalarHandler<Long>(), userId, shopId).intValue();
			if (flag == 0) {
				String sql1 = "insert car(userId,shopId) values(?,?)";
				return qr.update(sql1, userId, shopId);
			} else {
				return -10;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;

	}

	@Override
	public List<Shop> getSCShopList(int userId, int currentPage, int pageSize) {
		String sql = "select * from shop as a,car as b where b.shopId=a.id and b.userId=? limit ?,?";
		try {
			return qr.query(sql, new BeanListHandler<>(Shop.class), userId, (currentPage - 1) * pageSize, pageSize);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public int getTotalSCShopCount(int userId) {
		String sql = "select count(*) from car where userId=? ";
		try {
			return qr.query(sql, new ScalarHandler<Long>(), userId).intValue();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public int deleteSCShop(int userId, int shopId) {
		String sql = "delete from car where userId=? and shopId=?";
		try {
			return qr.update(sql, userId, shopId);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
		}
		return 0;
	}

}
