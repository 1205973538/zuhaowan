<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>租号玩-专业安全的游戏帐号出租买卖交易综合平台</title>
<link rel="stylesheet" type="text/css" href="css/index.css" />
<link rel="icon" href="/image/qqfcjt.jpg" type="image/jpg" >
</head>
<body style="background-color: #F5F5F5">
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
	<!--以上是导航栏-->
	<!-- 宣传栏 -->
	<div class="xcl">
		<div class="xcl-left" style="background-color: white;">
			<div class="btns">
				<button class="btn">穿越火线</button>
				&nbsp;
				<button class="btn">英雄联盟</button>
				</br> </br>
				<button class="btn">绝地求生</button>
				&nbsp;
				<button class="btn">王者荣耀</button>
			</div>
			<ul class="zhuanqv">
				<li><button>手游专区</button></li>
				<li><button>端游专区</button></li>
				<li><button>页游专区</button></li>
				<li><button>Steam专区</button></li>
				<li><button>全部游戏</button></li>
			</ul>
		</div>
		<!-- 轮播图 -->
		<div class="lun">
			<button class="btnshang" onclick="shang()"><</button>
			<img class="lunImg" src="image/g1.jpg">
			<button class="btnxia" onclick="xia()">></button>
			<ul class="lunList">
			<li value=0>防沉迷系统</li>
			<li value=1>至尊VIP强势来袭</li>
			<li value=2>买号玩</li>
			<li value=3>0元得好物</li>
			<li value=4>领券开战</li>
			<li value=5>九星游戏中心</li>
			</ul>
		</div>
		<!-- 用户登录 -->
		<div class="dj">
			<img src="image/tou.png"> </br>
			<button class="dlbtn" onclick="login()">立即登录</button>
			&nbsp;
			<button class="zcbtn" onclick="register()">立即注册</button>
			<div class="zxlist">
				<ul class="list2">
					<li><b style="color: black;">最新公告</b></li>
					</br>
					<li>关于快速提现开启的通知</li>
					</br>
					<li>关于手游登录需要验证码问题...</li>
					</br>
					<li>月商权限调整通知</li>
					</br>
					<li>客服服务电话变动通知</li>
				</ul>
			</div>
			<button class="xzbtn">下载客户端</button>
		</div>
		<div class="xrzx">
			<div class="xp">
				<h4>
					新人专享</br>注册领取大礼包
				</h4>
			</div>
		</div>
		<div class="mxzq">
			<div class="xp">
				<h4>
					秒杀专区</br>最低0.3元
				</h4>
			</div>
		</div>
		<div class="zszq">
			<div class="xp">
				<h4>
					组送专区</br>低价畅玩大神账号
				</h4>
			</div>
		</div>
		<div class="xsyd">
			<div class="xp">
				<h4>
					新手引导</br>一分钟学会租号玩
				</h4>
			</div>
		</div>
	</div>
	<div class="mfzq">
		<h2>大家都在玩</h2>
		<div class="yxlm">
			<img src="image/ms.png">
			<div class="mstext" style="background-color: white;">
				<h4 style="color: black;">英雄联盟</h4>
				秀出精彩 铸就精彩之道
				<p>&nbsp;</p>
			</div>
		</div>
		<div class="qqfc">
			<img src="image/qqfc.png">
			<div class="qqfctext" style="background-color: white;">
				<h4 style="color: black;">QQ飞车</h4>
				青春梦想 就要我行我素
				<p>&nbsp;</p>
			</div>
		</div>
		<div class="swxf">
			<img src="image/swxf.png">
			<div class="swxftext" style="background-color: white;">
				<h4 style="color: black;">守望先锋</h4>
				这个世界 需要更多的英雄
				<p>&nbsp;</p>
			</div>
		</div>
		<div class="cf">
			<img src="image/cs.png">
			<div class="cftext" style="background-color: white;">
				<h4 style="color: black;">穿越火线</h4>
				三亿鼠标 功夫枪战梦想
				<p>&nbsp;</p>
			</div>
		</div>
		<div class="cs">
			<img src="image/cs1.png">
			<div class="cstext" style="background-color: white;">
				<h4 style="color: black;">反恐精英OL</h4>
				枪战世界 经典的FPS游戏
				<p>&nbsp;</p>
			</div>
		</div>
	</div>
	<div class="hd">
		<h2>活动专区</h2>
		<div class="yx">
			<img src="image/yx.jpg" height="150px " width="270px">
			<div class="yxtext" style="background-color: white;">
				<p>&nbsp;</p>
				<h4>游戏代理招募</h4>
				活动时间:长期
				<p>&nbsp;</p>
			</div>
		</div>
		<div class="wb">
			<img src="image/wb.jpg" height="150px " width="270px">
			<div class="wbtext" style="background-color: white;">
				<p>&nbsp;</p>
				<h4>网吧推广</h4>
				活动时间:长期
				<p>&nbsp;</p>
			</div>
		</div>
		<div class="xr">
			<img src="image/xr.jpg" height="150px " width="270px">
			<div class="xrtext" style="background-color: white;">
				<p>&nbsp;</p>
				<h4>新人专享福利</h4>
				活动时间:长期
				<p>&nbsp;</p>
			</div>
		</div>
		<div class="zj">
			<img src="image/zj.jpg" height="150px " width="270px">
			<div class="zjtext" style="background-color: white;">
				<p>&nbsp;</p>
				<h4>租几送几专题活动</h4>
				活动时间:长期
				<p>&nbsp;</p>
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
	<script type="text/javascript" src="js/index.js"></script>
</body>
</html>