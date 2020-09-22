<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>租号大厅</title>
<link rel="shortcut icon" href="/image/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="css/select.css" />
</head>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/select.js"></script>
<body style="background-color: #F5F5F5">
	<%@ include file="nav.jsp"%>
	</nav>
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
			<div class="trmen">所有分类 ></div>
			<div class="list1">
				<ul class=nav-list>
					<li><a onclick="index()">首页</a></li>
					<li><a onclick="select()">租号玩</a></li>
					<li><a onclick="jm()">加盟赚钱</a></li>
					<li><a>推荐店铺</a></li>
					<li><a>免费体验</a></li>
					<li><a onclick="vip()">会员俱乐部</a></li>
					<li><a>领券中心</a></li>
				</ul>
			</div>
			<span class="ke">下载客户端</span>
		</div>
	</div>
	<!-- 以上是导航栏 -->
	<div class="dt">
		<h4 style="color: #4C4C4C" class="zhdt">租号大厅</h4>
		<hr style="border-color: #F5F5F5">
		<!--  -->
		<div class="rmdy">热门端游：</div>
		<button class="cfbtn"></button>
		<button class="lolbtn"></button>
		<button class="jdqsbtn"></button>
		<button class="nzbtn"></button>
		<button class="qqfcbtn"></button>
		<button class="csbtn"></button>
		<button class="gtabtn"></button>
		<br> <br>
		<div class="rmsy">热门手游：</div>
		<button class="wzrysbtn"></button>
		<button class="hyrzsbtn"></button>
		<button class="cfsbtn"></button>
		<button class="qqfcsbtn"></button>
		<button class="hpjysbtn"></button>
		<button class="qqdzzsbtn"></button>
	</div>
	<!--  -->
	<div class="chaxun">
		<div class="lx">关键字搜索：</div>
		<div class="ss">
			<input type="text" class="ssk" placeholder="请输入关键字"><input type="button"
				class="ssb" value="搜 索" onclick="mohu()">
		</div>
	</div>
	<!--  -->
	<div class="px">
		<ul>
			<li>综合排序</li>
			<li>时间</li>
			<li>价格↓</li>
			<li>销量↓</li>
		</ul>
	</div>
	<!-- 商品展示区 -->
	<div class="zsq">
		<!-- <div class="sp">
			<div
				style="display: inline-block; border: 1px black solid; padding: 20px;">
				<img src="image/ez.png" width="85px" height="85px">
			</div>
			<div
				style="display: inline-block; border: 1px black solid; padding: 20px;">
				<b>title</b><br> <span style="color: #FC3737">name</span><br>
				<span style="color: #8B8B8B">类型</span><br> <span
					style="color: #8B8B8B">服务器</span>
			</div>
			<div
				style="display: inline-block; border: 1px black solid; padding: 20px;position: relative;float: right;margin: 20px;">
				<b style="color: red;">13/每小时</b><br> <span
					style="color: #8B8B8B">押金0元丨1小时起租</span>
					<br><br>
			</div>
		</div> -->
		
	</div>
	<div class="btns" align="center">
	<button onclick="first()">首页</button>
	<button onclick="shang()">上一页</button>
	<input type="text" class="yema" value="1/0" readonly="readonly">
	<button onclick="xia()">下一页</button>
	<button onclick="last()">尾页</button>
	</div>
	
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