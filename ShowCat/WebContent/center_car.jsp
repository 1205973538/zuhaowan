<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>我收藏的账号</title>
<link rel="shortcut icon" href="/image/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="css/center_car.css">
</head>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/center_car.js"></script>
<body style="background-color: #F3F4F6">
	<%@ include file="nav.jsp"%>
	<div class="nav2">
	<br>
		<div class="logo">
			<img class="img-logo" src="image/zhw-logo.png">
		</div>
		<div class="jie">
			<span>专业的游戏平台</span>
		</div>
		<div class="sousuo">
			<input type="text" class="sstext" placeholder="请输入搜索关键词"><input
				type="button" class="ssbtn" value="搜 索">
		</div>
		<div class="reandlist">
			<div class="trmen">热门游戏 ></div>
			<div class="list1">
				<ul class=nav-list>
					<li onclick="index()">首页</li>
					<li onclick="select()">租号玩</li>
					<li onclick="jm()">加盟赚钱</li>
					<li>推荐店铺</li>
					<li>免费体验</li>
					<li onclick="vip()">会员俱乐部</li>
					<li>领券中心</li>
				</ul>
			</div>
			<span class="ke">下载客户端</span>
		</div>
	</div>
	<!-- 以上是导航栏 -->
	<!-- 以下是 -->
	<div class="grzxnav">
		<div style="padding: 10px;">
			<b onclick="gr()"
				style="text-indent: 10px; display: block; color: #999999; font-size: 17px; cursor: pointer;">个人中心</b>
			<hr color="#999999">
			<b style="text-indent: 10px; display: block; color: #999999">我是租客</b>
			<ul class="zklist">
				<li>我租的订单</li>
				<li onclick="car()">我收藏的账号</li>
			</ul>
			<hr color="#999999">
			<b style="text-indent: 10px; display: block; color: #999999">我是号主</b>
			<ul class="hzlist" style="cursor: pointer;">
				<li onclick="fb()">发布账号</li>
				<li onclick="yfb()">已发布的账号</li>
			</ul>
		</div>
	</div>
	<!--  -->
	<!-- 以下是收藏信息 -->
	<div class="sc">
		<div style="padding: 30px;">
		<img src="image/car.png" style="height: 15px;"><b
				style="color: #555555; font-size: 17px; line-height: 30px;font-size: 18px;">账号收藏管理:</b>
			<hr style="margin: 10px;">
			<table class="table">
				<tr style="background: #F96658; color: white; line-height: 35px;">
					<th>游戏名</th>
					<th>角色名</th>
					<th width="130px">账号价格(元/时)</th>
					<th width="130px">可租时间段</th>
					<th width="105px">详情</th>
					<th width="105px">移除</th>
				</tr>
			<!-- 	<tr>
					<td>游戏名</td>
					<td>游戏名</td>
					<td width="130px">游戏名</td>
					<td width="130px">0:00-24:00</td>
					<td width="105px" align="center"><button
							style="background: #0EA0E0; color: white; border-radius: 10px" onclick="ckxq()">查看账号详情</button></td>
					<td width="105px" align="center"><button
							style="background: red; color: white; border-radius: 10px" onclick="yclb()">移出收藏列表</button></td>
				</tr> -->
			</table>
			<div align="center" class="my">
				<span>您还没有收藏账号~</span>
			</div>
			<div class="btns" align="center">
				<button onclick="first()">首页</button>
				<button onclick="shang()">上一页</button>
				<input type="text" class="yema" value="1/0" readonly="readonly">
				<button onclick="xia()">下一页</button>
				<button onclick="last()">尾页</button>
			</div>
		</div>
	</div>
<!-- 弹框 -->
	<div class="alert" align="center" style="display:none; z-index: 15;position:fixed; ;top:165px;left: 390px;">
		<div
			style="background-color: white; width:1150px; height: 600px; border-radius: 10px">
			<div style="margin: 20px">
				<b style="margin-top: 30px;float: left;font-weight: bold;font-size: 20px">温馨提示</b>
				<br>
				<div style="padding-top: 50px">
					<hr>
					<img src="image/delete.png" style="margin-top:90px"><br><br>
					<h2 style="display:inline; margin-top: 100px; margin-bottom: 100px;">
					<span class="zttxt">移除收藏成功！</span></h2>
					<hr style="margin-top: 90px">
					<button onclick="qd()"
						style="height: 50px; width: 100px; font-size: 18px; background-color: #2181FF; border-color:#2181FF;border-radius:10px; color: white; font-weight: bold; float: right; margin-right: 30px">确定</button>
					</div>
			</div>
		</div>
	</div>

	<!-- 尾部 -->
	<div class="wei">
		<div class="wei1" align="center">
			<p>&nbsp;</p>
			<ul class="list3">
				<li style="font-weight: bold;">租号玩-国内游戏账号租用体验领跑平台</li>
				<li>丨</li>
				<li>新手帮助</li>
				<li>丨</li>
				<li>数据安全</li>
				<li>丨</li>
				<li>贴心服务</li>
				<li>丨</li>
				<li>关于租号玩</li>
				<li>丨</li>
			</ul>
			<img src="image/wx.png">&nbsp;<img src="image/wb1.png">
		</div>
	</div>
</body>
</html>