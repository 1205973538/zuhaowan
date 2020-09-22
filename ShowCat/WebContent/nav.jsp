<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/nav.css">
</head>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/nav.js"></script>
<body>
	<nav>
		<div class="nav">
			<div class="header-left">
				<a href="index.jsp" class="a-one"><span>您好，欢迎来到租号玩</span> </a>
			</div>
			<div class="header-right">
				<ul class="list-one">
					<span class="hello">你好!</span><li onclick="login()" class="la">请登录</li>
					<li onclick="login1()" class="laa" style="display: none">切换用户</li>
					<li onclick="tui()" class="laaa" style="display: none;">退出</li>
					<li onclick="resgister()">立即注册</li> 丨
					<li onclick="userCenter()">用户中心</li>
					<li>帮助中心</li>
					<li>关于我们</li> 丨
					<li>手机版</li>
				</ul>
			</div>
		</div>
	<!-- 弹框1 -->
	<div class="alertW" align="center"
		style="z-index: 15;display:none;position: fixed;; top: 165px; left: 390px;">
		<div
			style="background-color: white;width: 1150px; height:550px; border-radius: 10px">
			<div style="margin: 20px">
				<b
					style="margin-top: 30px; float: left; font-weight: bold; font-size: 20px">温馨提示</b>
				<br>
				<div style="padding-top: 50px">
					<hr>
					<img src="image/wen.png" style="margin-top: 90px">
					<br>
					<h1
						style="display: inline; margin-top: 100px; margin-bottom: 100px;">
						<span class="zttxt">你确定要注销吗？</span>
					</h1>
					<br>
					<hr style="margin-top: 90px">
					<button onclick="qx1()"
						style="height: 50px; width: 100px; font-size: 18px; background-color: #2181FF; border-color: #2181FF; border-radius: 10px; color: white; font-weight: bold; float: right; margin-right: 30px">取消</button>
					<button onclick="qd1()"
						style="height: 50px; width: 100px; font-size: 18px; background-color: #2181FF; border-color: #2181FF; border-radius: 10px; color: white; font-weight: bold; float: right; margin-right: 30px">确定</button>
				</div>
			</div>
		</div>
	</div>
			<!-- 弹框1 -->
	<div class="alertZx" align="center"
		style="z-index: 15;display:none;  position: fixed;; top: 165px; left: 390px;">
		<div
			style="background-color: white;width: 1150px; height:500px; border-radius: 10px">
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
						<span class="zttxt">注销成功！</span>
					</h1>
					<br>
					<hr style="margin-top: 90px">
					<button onclick="cs1()"
						style="height: 50px; width: 100px; font-size: 18px; background-color: #2181FF; border-color: #2181FF; border-radius: 10px; color: white; font-weight: bold; float: right; margin-right: 30px">确定</button>
				</div>
			</div>
		</div>
	</div>
	</nav>
	
</body>
</html>