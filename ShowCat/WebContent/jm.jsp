<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>会员特权</title>
<link rel="shortcut icon" href="/image/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="css/jm.css">
</head>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jm.js"></script>
<body>
<%@include file="nav.jsp"%>
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
	<!--以上是导航栏-->
	<div  style="background-image: url('image/jm.jpg');background-repeat: no-repeat;width: 100%;height:750px">&nbsp;</div>
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