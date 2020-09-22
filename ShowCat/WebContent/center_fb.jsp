<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>发布账号</title>
<link rel="shortcut icon" href="/image/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="css/center_fb.css">
</head>
<script type="text/javascript" src = "js/jquery.min.js"></script>
<script type="text/javascript" src = "js/center_fb.js"></script>
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
	<!--  -->
	<!-- 以下是发布信息 -->
	<div class="fb">
		<div style="padding: 30px;">
		<img src="img/xie.png"><b style="color: #555555">填写您要发布的商品资料</b>
			<hr style="color: #555555">
			<div align="center">
				<hr style="display: inline-block; width: 100px">
				<h2 style="display: inline; color: #E6292C">温馨提示</h2>
				<hr style="display: inline-block; width: 100px">
				<p style="color: #E6292C; font-size: 5px;">
					为了您的账户资金安全，请保证：<br>1、开启支付密码 2、手游QQ号不要和租号玩QQ快捷登录账号一致
					3、租号玩账户密码不要和QQ密码一致，请号主提高资金安全意识。
				</p>
				<img src="image/lc.png">
			</div>
			<br> <b
				style="background-color: #F96557; padding: 10px; color: white; border-radius: 10px;">1.请选择游戏</b>
			<span style="color: #F96557">选择你想要发布的游戏名称、所在大区和服务器</span>
			<hr style="color: #999999; margin-top: 20px">
			<div align="center" class="xzdiv">
				<span>*游戏名称:</span><select class="name"><option>选择游戏</option></select> <span>游戏类型:</span><select><option class="leixing">选择类型</option></select><b class="nameB" style="color:red; display: none">×请选择游戏</b>
			</div>
			<span style="color: #E6292C; font-size: 5px;">注：跑跑卡丁车、NBA2KOL等此类游戏删除道具无需二级密码。考虑到风险问题，请在上架时，设置押金。另外，如果发生道具被删除，造成的损失，将由出租方自己承担责任。黎明杀机、侠盗猎车手、H1Z1等Steam平台的游戏请直接选择对应游戏。助手中不支持"启动游戏"功能。</span>
			<hr style="color: #F2F2F2; border: 4px solid;">

			<br> <b
				style="background-color: #F96557; padding: 10px; color: white; border-radius: 10px;">2.填写账号信息</b>
			<span style="color: #F96557">详细描述账号信息，据说出租率可以提高50%以上哦~</span>
			<hr style="color: #999999; margin-top: 20px">
			<div class="tx">
			*<br>
			<span>&nbsp;游戏账号：</span><input type="text"placeholder="请输入账号" class="number">&nbsp;<b class="numberB" style="color:red; display: none">×请输入账号</b>
			<br>
			*<br>
			<span>&nbsp;游戏密码：</span><input type="password"placeholder="请输入密码"  class="pwd">&nbsp;<b  class="pwdB" style="color:red;display: none">×请输入密码</b>
			<br>
			*<br>
			<span>&nbsp;角色名称：</span><input type="text"placeholder="请输入角色名称" class="pName">&nbsp;<b  class="pNameB"  style="color:red;display: none">×请输入角色名称</b>
			<br>
			*<br>
			<span>&nbsp;账号标题：</span><input type="text"placeholder="请填写标题" style="width: 550px;"  class="title">&nbsp;<b class="titleB"  style="color:red;display: none">×请输入标题内容</b>
			<b class="titleT"  style="color:red;display: none">×标题不得超过28个字符</b>
			<br>
			*<br>
			<span>&nbsp;账号描述：</span>
			<br>
			&nbsp;&nbsp;<textarea rows="5" style="width: 650px;" placeholder="对帐号的简介，如装备、英雄、皮肤、时装等..."  class="ms"></textarea>
			<br>
			&nbsp;&nbsp;<b style="color:green;">*进行详细描述成交率更高</b>
			</div>
			<hr style="color: #F2F2F2; border: 4px solid; margin-top: 20px">
			<div class="txxx">
			<br> <b
				style="background-color: #F96557; padding: 10px; color: white; border-radius: 10px;">3.填写出租信息</b>
			<span style="color: #F96557">正确填写以下信息，让交易顺利完成</span>
			<hr style="color: #999999; margin-top: 20px">
			<br>
			<span>&nbsp;*请设置租金：&nbsp;&nbsp;&nbsp;</span><input type="text" value="1" class="money">元/小时&nbsp;<b  class="moneyB"  style="color:red;display: none">×租金不能小于0元</b>
			<b  class="moneyC"  style="color:red;display: none">×请输入正确的租金格式</b>
			<br>
			</div>
			<hr style="color: #F2F2F2; border: 4px solid; margin-top: 20px">
			<div align="center">
				<input type="checkbox" checked="checked">我已阅读并同意《租号玩虚拟商品购买协议》
				<br>
				<button class="fbbtn" onclick="fabu()">确认发布商品</button>
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