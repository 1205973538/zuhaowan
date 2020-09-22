package cn.kgc.tangcco.tcas2282.haoyu.common;

import javax.sql.DataSource;

import com.mchange.v2.c3p0.ComboPooledDataSource;
import com.mysql.jdbc.Connection;

public class DBUtilC3P0 {
	// 1.数据源，注意导包
	private static DataSource ds;
	private static ThreadLocal<Connection> t = new ThreadLocal<Connection>();
	static {
		try {
			ds = new ComboPooledDataSource();
			System.out.println("数据路连接池创建成功！");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 用来作数据源的连接的方法
	public static DataSource getDataSource() {
		return ds;
	}

}
