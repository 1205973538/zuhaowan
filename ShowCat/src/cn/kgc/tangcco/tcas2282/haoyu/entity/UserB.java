package cn.kgc.tangcco.tcas2282.haoyu.entity;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserB {
	private int id;
	private String userName;
	private String pwd;
	private String email;
	private String uName;
	private double gold;
	private List<Shop> shopList;
	private int zNum;
}
