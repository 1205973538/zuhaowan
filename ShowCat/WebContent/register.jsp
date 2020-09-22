<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>用户登陆-租号玩</title>
<link rel="shortcut icon" href="/image/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="css/register.css" />
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
			<li><a href="index.jsp" style="color: #B57E66;text-decoration: none">首页</a></li>
			<li><a href="login.jsp" style="color: #B57E66;text-decoration: none">用户登录</a></li>
			<li><a>帮助中心</a></li>
		</ul>
	</div>
	<!-- 登錄狂 -->
	<div class="dlk">
		<b class="d" onclick="d()">登录</b>&nbsp;丨&nbsp;<b class="z"  onclick="z()">注册</b><br>
		<img src="image/yh.png" style="position: absolute; margin-top: 30px;margin-left:10px;"><input type="text" placeholder="请输入用户名" class="uName">
		<div class="uNamediv"></div>
		<img src="image/zh.png" style="position: absolute; margin-top: 30px;margin-left:10px;"><input type="text" placeholder="请输入账号" class="user">
		<div class="userdiv"></div>
		<img src="image/suo.png" style="position: absolute; margin-top: 26px;margin-left:10px;"><input type="password" placeholder="请输入密码" class="pwd"><br>
		<div class="pwddiv"></div>
		<img src="image/suo1.png" style="position: absolute; margin-top:26px;margin-left:10px;"><input type="password" placeholder="请输入再次密码" class="pwd2"><br>
		<div class="pwd2div"></div>
		<img src="image/yx.png" style="position: absolute; margin-top:30px;margin-left:10px;"><input type="email" placeholder="请输入邮箱" class="email"><br>
		<div class="emaildiv"></div>
		<img width="10px" src="image/sj1.png" style="position: absolute; margin-top:30px;margin-left:10px;"><input type="text" placeholder="请输入手机号" class="handNum1"><br>
		<img src="image/xx.png" style="position: absolute; margin-top:30px;margin-left:10px;"><input type="text" placeholder="短信验证码" class="handNum" maxlength="6"><button class="hnbtn" onclick="fs()">发送验证码</button><br>
		<input type="checkbox" class="ck"><span class="yd">我已阅读并同意 《平台服务协议》和《隐私政策》</span>
		<div class="checkboxdiv"></div>
		<button class="zcbtn" onclick="zc()">立即注册</button>
		<div class="hrs">
			<hr width="100px">
			扫码下载领红包
			<hr width="100px">
		</div>
		<br> <img class="wm" src="image/wm.png" width="70px"
			align="middle">
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
						<span class="zttxt">注册成功！</span>
					</h1>
					<br> <br>
					<hr style="margin-top: 90px">
					<button onclick="cs()"
						style="height: 50px; width: 100px; font-size: 18px; background-color: #2181FF; border-color: #2181FF; border-radius: 10px; color: white; font-weight: bold; float: right; margin-right: 30px">确定</button>
				</div>
			</div>
		</div>
	</div>
	<script src="js/jquery.min.js"></script>
	<script src="js/register.js"></script>
</body>
</html>