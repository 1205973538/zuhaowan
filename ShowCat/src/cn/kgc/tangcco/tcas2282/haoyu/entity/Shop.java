package cn.kgc.tangcco.tcas2282.haoyu.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Shop {
	// id
	private int id;
	// 游戏名
	private String name;
	// 租金
	private double money;
	// 类型
	private String leixing;
	// 描述
	private String title;
	//账号
	private int number;
	//密码
	private String pwd;
	//描述
	private String ms;
	//角色名
	private String pName;
	private int uid;
}
