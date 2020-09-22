<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>用户中心</title>
<link rel="stylesheet" type="text/css" href="css/userCenter.css">
<link rel="stylesheet" type="text/css" href="css/xcConfirm.css" />
</head>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script src="js/xcConfirm.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="js/userCenter.js"></script>
<body style="background-color: #F3F4F6">
	<%@ include file="nav.jsp"%>
	<div class="nav2">
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
				style="text-indent: 10px; display: block; color: #999999; cursor: pointer; font-size: 17px">个人中心</b>
			<hr color="#999999">
			<b style="text-indent: 10px; display: block; color: #999999">我是租客</b>
			<ul class="zklist">
				<li>我租的订单</li>
				<li onclick="car()">我收藏的账号</li>
			</ul>
			<hr color="#999999">
			<b style="text-indent: 10px; display: block; color: #999999">我是号主</b>
			<ul class="hzlist" style="cursor: pointer;">
				<li onclick="fb()">发布账单</li>
				<li onclick="yfb()">已发布的账号</li>
			</ul>
		</div>
	</div>
	<!-- 账号信息 -->
	<div class="xinxi">
		<div style="margin-left: 20px; margin-top: 20px">
			<div style="display: inline-block;">
				<br> <img src="img/t.jpg" width="90px;">
				<div style="position: absolute; bottom: 37px;">
					<img src="img/openvip.png">
				</div>
			</div>
			<div style="display: inline-block;">
				<ul class="grList">
					<li>欢迎你,<b style="font-size: 20px; margin-left: 20px"
						class="uName"></b> <img src="img/lv0.png" width="60px;"></li>
					<li>账号安全:
						<div
							style="background-color: yellow; width: 80px; display: inline-block;">&nbsp;</div>
						无风险
					</li>
					<li>信誉:<span style="color: blue;">&nbsp;&nbsp;&nbsp;优秀&nbsp;&nbsp;立即提升</span></li>
					<div style="position: absolute; bottom: 6px;">
						<img src="img/sj.png" style="margin-left: 5px"> <img
							src="img/q.png"> <img src="img/xx.png"> <img
							src="img/yh.png">
					</div>
				</ul>
			</div>
			<div
				style="display: inline-block; margin-left: 10px; margin-bottom: 20px; text-align: center; border-right: 1px solid; padding-right: 30px; width: 100px">
				<h4 style="color: #555555">可用余额</h4>
				<h2 style="margin-top: 10px; color: #F96658">
					￥<span class="gold">0.00</span>
				</h2>
			</div>
			<div
				style="display: inline-block; margin-left: 30px; text-align: center; border-right: 1px solid; padding-right: 30px">
				<h4 style="color: #555555">
					不可用余额<img src="img/wen.png">
				</h4>
				<h2 style="margin-top: 10px; color: #F96658">￥0.00</h2>
			</div>
			<div
				style="display: inline-block; margin-left: 30px; text-align: center;">
				<h4 style="color: #555555">红包</h4>
				<h2 style="margin-top: 10px; color: #F96658">￥0.00</h2>
			</div>
			<div
				style="display: inline-block; margin-left: 30px; text-align: center;">
				<button class="addgold" onclick="cz()">充值</button>
				</br>
				</br>
				<button class="updategold" onclick="tx()">提现</button>
			</div>
		</div>
	</div>
	<!-- 租客情况 -->
	<div class="znum">
		<div style="margin-left: 20px; margin-top: 20px">
			<img src="image/son.png" style="height: 15px;"><b
				style="color: #555555; font-size: 17px; line-height: 30px">租客信息:</b>
			<hr style="margin: 10px;">
		</div>
		<div style="margin-left: 20px; margin-top: 20px">
			<div style="height: 25px;">&nbsp;</div>
			<ul class="xxlist">
				<li style="background-color: #F6F6F6; padding: 10px 20px 10px;">租号次数:<span
					class="zNum"></span></li>
				<li style="background-color: #F6F6F6; padding: 10px 20px 10px;">被拉黑:0</li>
				<li style="background-color: #F6F6F6; padding: 10px 20px 10px;">恶意投诉:0</li>
			</ul>
		</div>
		<div style="height: 35px;">&nbsp;</div>
	</div>
	<!-- 充值 -->
	<div class="Cmoney" style="display: none">
		<div style="margin: 20px; margin-bottom: 40px; color: #646464">
			请选择充值金额： <br> <br>
			<button style="border: 2px #FF0026 solid; margin-left: 0px">
				<span>5</span>元
			</button>
			<button>
				<span>10</span>元
			</button>
			<button>
				<span>15</span>元
			</button>
			<button>
				<span>20</span>元
			</button>
			<button>
				<span>30</span>元
			</button>
			<button>
				<span>50</span>元
			</button>
			<br> <br> 手动输入：<br>
			<input type="text" class="qianqian2"
				style="height: 50px; width: 110px; text-align: center; font-size: 20px;">元
			<br> 需支付
			<h1 style="display: inline-block;" class="mmm">5</h1>
			元<br> 请选择充值方式：
		<input class="bt" type="button" onclick="yhk()" value="银行卡充值">
		<input class="bt" type="button"  onclick="zfb()" value="支付宝充值">
		</div>
	</div>
	<!-- 支付宝页面跳转 -->
	<div class="Zmoney" style="display: none">
		<div style="margin: 20px; margin-bottom: 40px; color: #646464">
		<span>支付宝支付</span></br>
		<input type="button" class="yesz" onclick="zfbzf()" value="点击跳转到支付宝">
		</div>
	</div>
	<div class="Cmoney2"
		style=" margin: 20px; display: none; margin-bottom: 40px; color: #646464">
		<span>银行卡充值</span></br>
		<input type="button" class="yes" onclick="yes()"
				value="确定支付">
	</div>
	<!-- 提现 -->
	<div class="Tmoney" style="display: none">
		<div style="margin: 20px; margin-bottom: 40px; color: #646464">
			资金提现申请： <br> <span style="color: red;">
				温馨提示：提现问题请联系财务QQ：3007538558、3007538562、3007538561</span>
			<hr>
			请输入提现金额： <br> <br> <input onblur="jy()" type="text"
				placeholder="在此输入" class="tmoney" value="1" maxlength="4">元
			<br> <br> <span style="color: red" class="ts"></span> <br>
			取出共计
			<h1 style="display: inline-block;" class="mmm1">1</h1>
			元<br> <input type="button" class="yes1" onclick="yes1()"
				value="确定提交">
		</div>
	</div>
	<!-- 弹框1 -->
	<div class="alert" align="center"
		style="display: none; z-index: 15; position: absolute; top: 165px; left: 390px;">
		<div
			style="background-color: white; width: 1150px; height: 600px; border-radius: 10px">
			<div style="margin: 20px">
				<b
					style="margin-top: 30px; float: left; font-weight: bold; font-size: 20px"><span
					class="txt">支付</span>提示</b> <br>
				<div style="padding-top: 50px">
					<hr>
					<img src="image/wen.png" style="margin-top: 90px"><br>
					<h2
						style="display: inline; margin-top: 100px; margin-bottom: 100px;">
						您确定要<span class="txt">支付</span>吗？
					</h2>
					<hr style="margin-top: 90px">
					<button onclick="qx()"
						style="height: 50px; width: 100px; font-size: 18px; background-color: #FC3737; border-color: #FC3737; color: white; font-weight: bold; float: right; margin-right: 30px">取消</button>
					<button onclick="qd()"
						style="height: 50px; width: 100px; font-size: 18px; background-color: #FC3737; border-color: #FC3737; color: white; font-weight: bold; float: right; margin-right: 30px">确定</button>
				</div>
			</div>
		</div>
	</div>
	<!-- 弹框2 -->
	<div class="alert1" align="center"
		style="display: none; z-index: 15; position: absolute; top: 165px; left: 390px;">
		<div
			style="background-color: white; width: 1150px; height: 600px; border-radius: 10px">
			<div style="margin: 20px">
				<b
					style="margin-top: 30px; float: left; font-weight: bold; font-size: 20px">温馨提示</b>
				<br>
				<div style="padding-top: 50px">
					<hr>
					<img src="image/yes.png" style="margin-top: 90px"><br> <br>
					<h2
						style="display: inline; margin-top: 100px; margin-bottom: 100px;">
						<span class="txt">支付</span>成功！
					</h2>
					<hr style="margin-top: 90px">
					<button onclick="qqd()"
						style="height: 50px; width: 100px; font-size: 18px; background-color: #2181FF; border-color: #2181FF; border-radius: 10px; color: white; font-weight: bold; float: right; margin-right: 30px">确定</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>