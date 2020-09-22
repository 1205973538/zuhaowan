<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>账号详情</title>
<link rel="stylesheet" type="text/css" href="css/show.css">
</head>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/show.js"></script>
<body style="background-color: #F7F7F7">
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
	<!-- 主介绍界面 -->
	<div class="zsdiv">
		<input type="hidden" value=null class="id"> <a class="a">租号玩首页><span
			class="gameName"></span>><span class="title"> </span></a>
		<div class="zp" style="width: 400px">
			<img src="image/zzz.jpg" width="400px" class="jtimg"> <span
				style="color: red; cursor: pointer;" onclick="sc()">⭐收藏</span><span
				style="margin-left: 200px; color: #BAC0D2">租号须知丨举报商品</span>
		</div>
		<div class="js">
			<div style="padding: 20px">
				<b class="name"></b>
				<h3 style="display: inline-block;" class="title">标题</h3>
				<br> <span style="color: red" class="leixing">游戏类型</span>
				<c style="color:#FC3737">上号方式：<b>明文账号密码</b></c>
				<div class="sjjj">
					<div class="sjj">
						<sp style="color:#9C9C9C;">商家：已遵守商品出租管理条例，请放心下单</sp>
						</br> </br>
						<sp>商家承诺：到时不下线</sp>
						</br> </br>
						<sp>优惠活动：租三返红包</sp>
						</br> </br>
						<sp>租号限制：撤单率＜50%</sp>
					</div>
				</div>
			</div>
			<div style="padding-left: 20px; margin-top: 0px;">
				<select class="time"><option>请选择租用时长</option>
					<option>时租</option>
					<option>日租（打85折）</option>
				</select><span class="shour"><input type="text" placeholder="请输入时长"
					class="hour" maxlength="2" style="text-align: center;">小时 </span>
				<div class="money">
						<div style="color: white;background-color: #FC3737;display: inline-block; width: 130px;line-height:40px">租金</div>
						<br>
						￥<span class="zmoney" style="font-size: 25px">0.00</span>
				</div>
				<div>
					<b style="color: red; font-size:20px;" class="daymoney">0</b>元/小时起 <b class="hb"
						style="margin-left: 70px; font-size: 18px; color: red; display: none"><img src="img/cha.png">租用时间请输入正整数</b>
					<b class="hb1"
						style="margin-left: 70px; font-size: 18px; color: red; display: none"><img src="img/cha.png">账号限制，租用时间不得超过24小时</b>
					<b class="hb2"
						style="margin-left: 70px; font-size: 18px; color: green; display: none">24小时选择日租更加实惠</b>
				</div>
				<div >
					押金<b style="color: red;">0元</b>
				</div>
				</br>
				<div>
					<sb style="color: red;">温馨提示： 非账号问题无法撤单!</sb>
				</div>
				<button class="zybtn" onclick="ljzy()">立即租用</button>
			</div>
		</div>
	</div>
	<!--  -->
	<div class="xq">
		<div class="zhxx">
			<span
				style="color: #FC3737; font-weight: bold; border-top: 2px #FC3737 solid;">账号详情：</span>
			<hr style="width: 1050px; margin-right: 100px">
			<div>
				<img src="img/jt.png" style="border: 1px #F0F0F0 solid;">
			</div>
			<ul class="list1">
				<li style="margin-left: 0px">角色名：<span class="pName"></span>
				</li>
				<li style="margin-left: 0px; margin-top: 30px"><span
					class="leixing"></span></li>
			</ul>
			<ul class="list2">
				<li style="margin-left: 0px">排位赛：不允许</li>
				<li>最短租期：1小时</li>
				<li>可租时间段：0:00-24:00</li>
				<li>押金：0元</li>
			</ul>
			<br>
			<br> <span style="color: #FC3737; font-weight: bold;"><span>丨</span>账号描述：</span>
			<hr style="width: 1050px; margin-right: 100px">
			<div style="width: 1050px; display: inline-block;">
				<span class="ms" style="font-size: 17px">无</span> <br>
				<br>
				<br>
				<br> <span style="color: #FC3737; font-weight: bold;"><span>丨</span>号主有话说：</span>
				<hr style="width: 1050px; margin-right: 100px">
				小本生意多多支持，不能打排位亲
			</div>
		</div>
	</div>
	<!--  -->
	<div class="weibu">
		<div class="wei1" align="center">
			<p>&nbsp;</p>
			<ul class="list">
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
	<div class="alert" align="center"
		style="display: none; z-index: 15; position: fixed; top: 165px; left: 390px;">
		<div
			style="background-color: white; width: 1150px; height: 600px; border-radius: 10px">
			<div style="margin: 20px">
				<b
					style="margin-top: 30px; float: left; font-weight: bold; font-size: 20px"><span
					class="txtt">余额不足</span></b> <br>
				<div style="padding-top: 50px">
					<hr>
					<img src="image/ku.png" style="margin-top: 90px"><br>
					<h2
						style="display: inline; margin-top: 100px; margin-bottom: 100px;">
						<span class="txtt">抱歉，您的可用余额不足，是否跳转到充值页面？</span>
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
		style="display: none; z-index: 15; position: fixed;; top: 165px; left: 390px;">
		<div
			style="background-color: white; width: 1150px; height: 600px; border-radius: 10px">
			<div style="margin: 20px">
				<b
					style="margin-top: 30px; float: left; font-weight: bold; font-size: 20px">温馨提示</b>
				<br>
				<div style="padding-top: 50px">
					<hr>
					<img src="image/cha.png" style="margin-top: 90px"><br>
					<br>
					<h2
						style="display: inline; margin-top: 100px; margin-bottom: 100px;">
						<span class="txt">租用时长最短为1小时！</span>
					</h2>
					<hr style="margin-top: 90px">
					<button onclick="qqd()"
						style="height: 50px; width: 100px; font-size: 18px; background-color: #2181FF; border-color: #2181FF; border-radius: 10px; color: white; font-weight: bold; float: right; margin-right: 30px">确定</button>
				</div>
			</div>
		</div>
	</div>
	<!-- 弹框3 -->
	<div class="alert2" align="center"
		style="display: none; z-index: 15; position: fixed;; top: 165px; left: 390px;">
		<div
			style="background-color: white; width: 1150px; height: 600px; border-radius: 10px">
			<div style="margin: 20px">
				<b
					style="margin-top: 30px; float: left; font-weight: bold; font-size: 20px">温馨提示</b>
				<br>
				<div style="padding-top: 50px">
					<hr>
					<img src="image/wen.png" style="margin-top: 90px"><br>
					<br>
					<h2
						style="display: inline; margin-top: 100px; margin-bottom: 100px;">
						<span class="txt">你确定要租用该账号吗？</span>
					</h2>
					<br> <span style="color: red;">提示：一旦租用成功无法取消！</span>
					<hr style="margin-top: 90px">
					<button onclick="qx1()"
						style="height: 50px; width: 100px; font-size: 18px; background-color: #2181FF; border-color: #2181FF; border-radius: 10px; color: white; font-weight: bold; float: right; margin-right: 30px">取消</button>
				</div>
				<button onclick="qr1()"
					style="height: 50px; width: 100px; font-size: 18px; background-color: #2181FF; border-color: #2181FF; border-radius: 10px; color: white; font-weight: bold; float: right; margin-right: 30px">确定</button>
			</div>

		</div>
	</div>
	</div>
	<!-- 弹框4 -->
	<div class="alert3" align="center"
		style="display: none; z-index: 15; position: fixed;; top: 165px; left: 390px;">
		<div
			style="background-color: white; width: 1150px; height: 600px; border-radius: 10px">
			<div style="margin: 20px">
				<b
					style="margin-top: 30px; float: left; font-weight: bold; font-size: 20px">温馨提示</b>
				<div style="padding-top: 50px">
					<hr>
					<img src="image/xiao.png" style="margin-top: 90px"><br>
					<br>
					<h2>
						账号：<input type="text" class="num" style="font-size: 20px"
							readonly="readonly">
					</h2>
					<h2>
						密码：<input type="text" class="pwd" style="font-size: 20px"
							readonly="readonly">
					</h2>
					<span style="color: red;">重要提示：请妥善保管账号密码，一旦丢失后果自负！关闭该页后无法再次开启</span>
					<hr style="margin-top: 60px">
					<button onclick="qqdd()"
						style="height: 50px; width: 100px; font-size: 18px; background-color: #2181FF; border-color: #2181FF; border-radius: 10px; color: white; font-weight: bold; float: right; margin-right: 30px">确定</button>
				</div>
			</div>
		</div>
	</div>
	<!-- 弹框5 -->
	<div class="alert4" align="center"
		style="display: none; z-index: 15; position: fixed;; top: 165px; left: 390px;">
		<div
			style="background-color: white; width: 1150px; height: 600px; border-radius: 10px">
			<div style="margin: 20px">
				<b
					style="margin-top: 30px; float: left; font-weight: bold; font-size: 20px">温馨提示</b>
				<br>
				<div style="padding-top: 50px">
					<hr>
					<img src="image/car1.png" style="margin-top: 90px"><br>
					<br>
					<h2
						style="display: inline; margin-top: 100px; margin-bottom: 100px;">
						<span class="zttxt">收藏成功！</span>
					</h2>
					<hr style="margin-top: 90px">
					<button onclick="alert4qd()"
						style="height: 50px; width: 100px; font-size: 18px; background-color: #2181FF; border-color: #2181FF; border-radius: 10px; color: white; font-weight: bold; float: right; margin-right: 30px">确定</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>