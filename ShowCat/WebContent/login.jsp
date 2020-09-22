<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>用户登陆-租号玩</title>
<link rel="shortcut icon" href="/image/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="css/login.css" />
<link rel="stylesheet" type="text/css" href="css/xcConfirm.css" />
</head>
<body style="background-color: #F9FAFE">
	<div class="nav2">
		<div class="logo">
			<img class="img-logo" src="image/zhw-logo.png">
		</div>
		<div class="jie">
			<span>丨专业的游戏平台</span>
		</div>
		<ul class=nav-list>
			<li><a href="index.jsp"
				style="color: #B57E66; text-decoration: none">首页</a></li>
			<li><a href="register.jsp"
				style="color: #B57E66; text-decoration: none">用户注册</a></li>
			<li><a>帮助中心</a></li>
		</ul>
	</div>
	<!-- 登錄 -->
	<div class="dlk">
		<b class="d" onclick="d()">登录</b>&nbsp;丨&nbsp;<b class="z"
			onclick="z()">注册</b><br> <img src="image/yh.png"
			style="position: absolute; margin-top: 30px; margin-left: 10px;"><input
			type="text" placeholder="请输入账号" class="userName"> <img
			src="image/suo.png"
			style="position: absolute; margin-top: 26px; margin-left: 10px;"><input
			type="password" placeholder="请输入密码" class="pwd"><br> <span
			style="font-size: 12px">忘记密码</span> <br>
		<button class="dlbtn" onclick="login()">立即登录</button>
		<div class="hrs">
			<hr width="100px">
			扫码下载领红包
			<hr width="100px">
		</div>
		<br> <img class="wm" src="image/wm.png" width="70px"
			align="middle">
	</div>
	<!-- 弹框1 -->
	<div class="alert1" align="center"
		style="z-index: 15; display:none;  position: fixed;; top: 165px; left: 390px;">
		<div
			style="background-color: white;width: 1150px; height:450px; border-radius: 10px">
			<div style="margin: 20px">
				<b
					style="margin-top: 30px; float: left; font-weight: bold; font-size: 20px">温馨提示</b>
				<br>
				<div style="padding-top: 50px">
					<hr>
					<img src="image/dui1.png" style="margin-top: 90px">
					<br>
					<h1
						style="display: inline; margin-top: 100px; margin-bottom: 100px;">
						<span class="zttxt">登录成功！</span>
					</h1>
					<br> <br>
					<hr style="margin-top: 90px">
					<button onclick="cs()"
						style="height: 50px; width: 100px; font-size: 18px; background-color: #2181FF; border-color: #2181FF; border-radius: 10px; color: white; font-weight: bold; float: right; margin-right: 30px">确定</button>
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
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script src="js/xcConfirm.js" type="text/javascript" charset="utf-8"></script>
	<script type="text/javascript" src="js/login.js"></script>
</body>
</html>