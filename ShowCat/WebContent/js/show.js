$(document).ready(function() {
	getShop();
	// 选自套餐方法
	$(".time").blur(function() {
		if ($(this).val() == "请选择租用时长") {
			$(".shour").show();
			$(".hb").hide();
			$(".hb1").hide();
			$(".hb2").hide();
			$(".zmoney").text(0);
			$(".hour").val(null);
		} else if ($(this).val() == "时租") {
			$(".hb").hide();
			$(".hb1").hide();
			$(".hb3").hide();
			$(".hb2").hide();
			$(".shour").show();
			$(".hour").val(1);
			zm(0);
		} else {
			$(".hb").hide();
			$(".hb1").hide();
			$(".hb2").hide();
			$(".shour").hide();
			$(".hour").val(24);
			zm(1);
		}
	});
	$(".hour").blur(function(){
		var reg = /^\+?[1-9][0-9]*$/;
		if (reg.test($(this).val())) {
			$(".hb").hide();
			if ($(this).val()>24) {
				$(".hb1").show();
				$(".zmoney").text(0);
				return;
			}else{
				$(".hb1").hide();
			}
			if ($(this).val()==24) {
				$(".hb2").show();
			}else{
				$(".hb2").hide();
				if ($(this).val()<=0) {
					$(".hb").show();
				}else {
					zm(0);
					$(".hb").hide();
				}
			}
		}else{
			$(".hb").show();
			$(".zmoney").text(0);
		}
	});
});
// 收藏账号方法
function sc(){
	var shopId = $(".id").val();
	var uName = $(".la").text();
	if (uName=="请登录") {
		location.href="alert.jsp";
		return;
	}
	var json = {
			"method" : "select"
		}
	$.post("UserCenterServlet", json, function(data) {
		var json2 = {
			"method" : "scShop",
			"userId" : data.id,
			"shopId":shopId
		}
		$.post("UserCenterServlet",json2, function(data) {
			var tttxt = null;
			if (data==-10||data<=0) {
				tttxt="收藏失败，可能已收藏，请自行查看！";
			}else{
				tttxt="收藏成功！";
			}
			$(".zttxt").text(tttxt);
			$(".alert4").show();
		});
},"json");
}
// 立即租用方法
function ljzy(){
	var id = $(".id").val();
	var uName = $(".la").text();
	var zmoney = $(".zmoney").text();
	if (uName=="请登录") {
		location.href="alert.jsp";
		return;
	}if (zmoney==0) {
		$(".alert1").show();
		return;
	}else{
		var json = {
				"method":"checkMoney",
				"uName":uName,
				"zmoney":zmoney
		}
		$.post("CheckServlet",json,function(data){
			if (data=="false") {
				$(".alert").show();
			}else{
				$(".alert2").show();
			}
		});
	}
}
// 最后一关
function qr1(){
	var id = $(".id").val();
	var uName = $(".la").text();
	var zmoney = $(".zmoney").text();
	var json = {
			"method":"checkMoney",
			"uName":uName,
			"zmoney":zmoney
	}
	$.post("CheckServlet",json,function(data){
		if (data=="false") {
			$(".alert").show();
		}else{
			var id = $(".id").val();
			var uName = $(".la").text();
			var zmoney = $(".zmoney").text();
			var json1 = {
					"method":"updataAddMoney",
					"uName":uName,
					"gold":Math.floor(data* 100)/100
			}
			$.post("UserCenterServlet",json1,function(data){
				if (data=="true") {
					var json2 ={
							"method":"updataStatus",
							"id":id,
							"status":1,
							"uName":uName
					}
					$.post("UserCenterServlet",json2,function(data){
						var number = data.number;
						var pwd = data.pwd;
						$(".num").val(number);
						$(".pwd").val(pwd);
						$(".alert3").show();
					},"json");
				}
			});
		}
	});
}
function qx1(){
	$(".alert2").hide();
}
function alert4qd(){
	$(".alert4").hide();
}
// 跳转
function qqdd(){
	location.href="index.jsp";
}
function qd(){
	location.href="userCenter.jsp";
}
function qx(){
	$(".alert").hide();
}
function qqd(){
	$(".alert1").hide();
}
function index(){
	location.href="index.jsp";
}
function select(){
	location.href="select.jsp";
}
function jm(){
	location.href="jm.jsp";
}
function vip(){
	location.href="vip.jsp";
}
// 算总金额方法
function zm(t) {
	var zmoney = $(".hour").val() * $(".daymoney").text();
	if (t == 1) {
		zmoney = zmoney * 0.85;
		zmoney = zmoney.toFixed(2); 
		$(".zmoney").text(zmoney);
	}else{
		zmoney = zmoney.toFixed(2); 
		$(".zmoney").text(zmoney);
	}
}
// 查找商品方法
function getShop() {
	$.post("ShowServlet", null, function(data) {
		var id = data.id;
		var name = data.name;
		var money = data.money;
		var leixing = data.leixing;
		var title = data.title;
		var number = data.number;
		var pwd = data.pwd;
		var ms = data.ms;
		var pName = data.pName;
		$(".gameName").text(name);
		$(".name").text("[" + name + "]");
		$(".title").text(title);
		$(".leixing").text("类型：" + leixing);
		$(".pName").text(pName);
		if (ms!=null||ms!="") {
			$(".ms").text(ms);
		}
		// 以下是图片
		if (name == "穿越火线") {
			src = "cfjt.jpg";
		} else if (name == "英雄联盟") {
			src = "loljt.jpg";
		} else if (name == "绝地求生") {
			src = "jdqsjt.jpg"
		} else if (name == "逆战") {
			src = "nzjt.jpg";
		} else if (name == "QQ飞车") {
			src = "qqfcjt.jpg";
		} else if (name == "反恐精英") {
			src = "csjt.jpg";
		} else if (name == "GTA5") {
			src = "gta5jt.jpg";
		} else if (name == "王者荣耀") {
			src = "wzryjt.jpg";
		} else if (name == "火影忍者") {
			src = "hyrzjt.jpg";
		} else if (name == "穿越火线手游") {
			src = "cfsyjt.jpg";
		} else if (name == "QQ飞车手游") {
			src = "qqfcsyjt.jpg";
		} else if (name == "和平精英") {
			src = "hpjyjt.jpg";
		} else if (name == "球球大作战") {
			src = "qqdzzjt.jpg";
		}
		$(".jtimg").attr("src", "image/" + src + "");
		$(".daymoney").text(money);
		$(".id").val(id);
	}, "json");
}
