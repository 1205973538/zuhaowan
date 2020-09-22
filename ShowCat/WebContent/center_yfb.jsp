<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>已发布的账号</title>
<link rel="shortcut icon" href="/image/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="css/center_yfb.css">
<link rel="stylesheet" type="text/css" href="css/xcConfirm.css" />
</head>
<script type="text/javascript" src = "js/jquery.min.js"></script>
<script src="js/xcConfirm.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src = "js/center_yfb.js"></script>
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
			<b onclick="gr()" style="text-indent: 10px; display: block; color: #999999;font-size: 17px;cursor: pointer;">个人中心</b>
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
	<!-- 以下是已经发布信息 -->
	<div class="fb">
		<div style="padding: 30px;">
			<img src="image/car.png" style="height: 15px;"><b
				style="color: #555555; font-size: 17px; line-height: 30px">已发布账号:</b>
			<hr style="margin: 10px;">
			<div align="center">
				<img src="image/null.png"></br>
				<span>这里空空的~您还没有发布过账号哦~</span>
			</div>
			<div></div>
			<div style="margin-top: 50px"></div>
		</div>
	</div>
	<!-- 商品展示区 -->
	<div class="zsq" >
	<div style="padding: 20px"><img src="image/car.png" style="height: 15px;"><b
				style="color: #555555; font-size: 17px; line-height: 30px">已发布账号:</b>
			<hr style="margin: 10px;"></div>
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
					<button class="xjzh">下架账号</button>
					<br><br>
			</div>
		</div>
		<div class="sp">
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
					<button class="xjzh">下架账号</button>
					<br><br>
			</div>
		</div>
		<div class="sp">
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
					<button class="xjzh">下架账号</button>
					<br><br>
			</div>
		</div> -->
	</div>
	<div class="btns" align="center" style="display: none">
	<button onclick="first()">首页</button>
	<button onclick="shang()">上一页</button>
	<input type="text" style="width: 50px;text-align: center;" class="yema" value="1/0" readonly="readonly">
	<button onclick="xia()">下一页</button>
	<button onclick="last()">尾页</button>
	</div>
	<!-- 以下是发布信息 -->
	<div class="fb" style="display: none">
		<div style="padding: 30px;">
			<b style="color: #555555">账号信息</b>
			<hr style="color: #555555">
			<br> 
			<br> <b
				style="background-color: #F96557; padding: 10px; color: white; border-radius: 10px;">修改账号信息</b>
			<hr style="color: #999999; margin-top: 20px">
			<div class="tx">
			<input type="hidden" class="xid">
			*<br>
			<span>&nbsp;游戏账号：</span><input type="text"placeholder="请输入账号" class="number">&nbsp;<b class="numberB" style="color:red; display: none">×请输入账号</b>
			<br>
			*<br>
			<span>&nbsp;游戏密码：</span><input type="text"placeholder="请输入密码"  class="pwd">&nbsp;<b  class="pwdB" style="color:red;display: none">×请输入密码</b>
			<br>
			*<br>
			<span>&nbsp;角色名称：</span><input type="text"placeholder="请输入角色名称" class="pName">&nbsp;<b  class="pNameB"  style="color:red;display: none">×请输入角色名称</b>
			<br>
			*<br>
			<span>&nbsp;账号标题：</span><input type="text"placeholder="请填写标题" style="width: 550px;" class="title"  maxlength="28" >&nbsp;
			<b class="titleT"  style="color:red;display: none">×标题不得超过28个字符</b>
			<br>
			*<br>
			<span>&nbsp;账号描述：</span>
			<br>
			&nbsp;&nbsp;<textarea rows="5" style="width: 650px;" placeholder="对帐号的简介，如装备、英雄、皮肤、时装等..."  class="ms"></textarea>
			<br>
			</div>
			<div class="txxx">
			<br>
			<span>&nbsp;*请设置租金：&nbsp;&nbsp;&nbsp;</span><input type="text" value="1" class="money">元/小时&nbsp;<b  class="moneyB"  style="color:red;display: none">×租金不能小于0元</b>
			<b  class="moneyC"  style="color:red;display: none">×请输入正确的租金格式</b>
			<br>
			</div>
			<hr style="color: #F2F2F2; border: 4px solid; margin-top: 20px">
			<div style="float: right;">
				<button class="fbbtn" onclick="xiu()">修改</button>
				&nbsp;<button class="fbbtn" onclick="qv()">取消</button>
			</div>
		</div>
	</div>
		<!-- 下架弹框 -->
	<div class="alert" align="center" style="display:none;z-index: 15;position: absolute;top:165px;left: 390px;">
		<div
			style="background-color: white; width:1150px; height: 600px; border-radius: 10px">
			<div style="margin: 20px">
				<b style="margin-top: 30px;float: left;font-weight: bold;font-size: 20px">温馨提示</b>
				<br>
				<div style="padding-top: 50px">
					<hr>
					<img src="image/yes.png" style="margin-top:90px"><br><br>
					<h2 style="display:inline; margin-top: 100px; margin-bottom: 100px;"><span class="txt">下架</span>成功！</h2>
					<hr style="margin-top: 90px">
					<button onclick="c()"
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