var currentPage = 1;
var pageSize = 3;
var totalCount = 0;
var totalPage = 0;
$(document).ready(function() {
s();
tc();
});
//查询方法
function s(){
	// 先获取id
	var json = {
		"method" : "select"
	}
	$.post("UserCenterServlet", json, function(data) {
		var json2 = {
			"method" : "checkShopList",
			"id" : data.id
		}
		$.post("CheckServlet", json2, function(data1) {
			if (data1 == "true") {
				$(".zsq").show();
				$(".btns").show();
				var json3 = {
						"method":"getShopList",
						"id":data.id,
						"currentPage":currentPage,
						"pageSize":pageSize
				}
				$.post("UserCenterServlet",json3,function(data2){
					$.each(data2,function(i,v){
						if (i=="shopList") {
							$(".sp").remove();
							$(".xxhr").remove();
							$.each(data2.shopList,function(i1,v1){
								var id = v1.id;
								var name = v1.name;
								var money = v1.money;
								var leixing = v1.leixing;
								var title = v1.title;
								var pName = v1.pName;
								var money = v1.money;
								var number=v1.number;
								var src = null;
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
								var $div = $("<div class='sp'><div style='display: inline-block;padding: 20px;'><img src='image/"
										+ src
										+ "' width='85px' height='85px'></div><div style='display: inline-block;padding: 20px;'><b>"
										+ title
										+ "</b><br> <span style='color: #FC3737'>游戏："
										+ name
										+ "</span><br><span style='color: #8B8B8B'>昵称："
										+ pName
										+ "丨</span><span style='color: #8B8B8B'>账号："
										+ number
										+"</span><br>&nbsp;</div><div style='display: inline-block;position: relative;float: right;top:20px;right:20px'><b style='color: red;'>"
										+ money
										+ "/每小时</b><br><button onclick='xgxx("
										+ id
										+ ")' class='xjzh'>修改信息</button><br><button onclick='xjzh("
										+ id
										+ ")' class='xjzh'>下架账号</button><br><input type='hidden' value='"
										+ id
										+ "'></div></div><hr class='xxhr'>");
								$(".zsq").append($div);
								$(".sp").addClass("sp");
								$(".sp").addClass("sp:hover");
								$(".xjzh").addClass("xjzh");
								$(".xjzh").addClass("xjzh:hover");
								
							});
						}
					});
				},"json");
			}
		});
	}, "json");
}
//修改信息
function xgxx(id){
	var id =id;
	var json = {
			"method" : "select"
		}
		$.post("UserCenterServlet", json, function(data) {
			var json2 = {
				"method" : "checkShopList",
				"id" : data.id
			}
			$.post("CheckServlet", json2, function(data1) {
				if (data1 == "true") {
					var json3 = {
							"method":"getShopList",
							"id":data.id,
							"currentPage":currentPage,
							"pageSize":pageSize
					}
					$.post("UserCenterServlet",json3,function(data2){
						$.each(data2,function(i,v){
							if (i=="shopList") {
								$.each(data2.shopList,function(i1,v1){
									var id1 = v1.id;
									if (id1==id) {
										var money = v1.money;
										var title = v1.title;
										var pName = v1.pName;
										var number=v1.number;
										var pwd = v1.pwd;
										var ms = v1.ms;
										$(".xid").val(id1);
										$(".number").val(number);
										$(".pwd").val(pwd);
										$(".pName").val(pName);
										$(".title").val(title);
										$(".ms").val(ms);
										$(".money").val(money);
										$(".fb").show();
									}
								});
							}
						});
					},"json");
				}
			});
		}, "json");
}

//下架账号
function xjzh(id){
	var id = id;
	var json = {
			"method":"deleteShop",
			"id":id
	}
	$.post("UserCenterServlet",json,function(data){
		if (data=="true") {
			$(".alert").show();
		}
	});
}
// 
function tc() {
	var json = {
			"method" : "select"
		}
		$.post("UserCenterServlet", json, function(data) {
			var json2 = {
				"method" : "getShopCount",
				"id" : data.id
			}
			$.post("UserCenterServlet", json2, function(data1) {
				totalCount = data1;
				totalPage = Math.ceil(totalCount / pageSize);
				$(".yema").val(currentPage + "/" + totalPage);
			});
		},"json");
}
function shang() {
	currentPage--;
	if (currentPage < 1) {
		currentPage = 1;
	}
	s();
	tc();
}
function xia() {
	currentPage++;
	if (currentPage > totalPage) {
		currentPage = totalPage;
	}
	s();
	tc();
}
function first() {
	currentPage = 1;
	s();
	tc();
}
function last() {
	currentPage = totalPage;
	s();
	tc();
}
// 跳转
function c(){
	location.href = "center_yfb.jsp";
}
function gr() {
	location.href = "userCenter.jsp";
}
function fb() {
	location.href = "center_fb.jsp";
}
function index() {
	location.href = "index.jsp";
}
function yfb() {
	location.href = "center_yfb.jsp";
}
function jm(){
	location.href="jm.jsp";
}
function vip(){
	location.href="vip.jsp";
}function car(){
	location.href="center_car.jsp"
}
//修改取消
function xiu(){
	var id = $(".xid").val();
	var money = $(".money").val();
	var title = $(".title").val();
	var pName = $(".pName").val();
	var number= $(".number").val();
	var pwd = $(".pwd").val();
	var ms = $(".ms").val();
	var ragM = /^[0-9]+.?[0-9]*$/;
	if (money==""||title==""||pName==""||number==""||pwd=="") {
		window.wxc.xcConfirm("请将修改信息填写完整！", window.wxc.xcConfirm.typeEnum.info,"温馨提示");
	return;
	}else if (ragM.test(money)==false){
		window.wxc.xcConfirm("请输入正确格式的租金！", window.wxc.xcConfirm.typeEnum.error,"温馨提示");
	return;
	}else{
		var json = {
				"method":"updateShop",
				"id":id,
				"money":money,
				"title":title,
				"pName":pName,
				"number":number,
				"pwd":pwd,
				"ms":ms
		}
		$.post("UserCenterServlet",json,function(data){
			if (data=="true") {
				location.href="center_yfb.jsp";
			}else{
				window.wxc.xcConfirm("网络超时，请联系管理员！", window.wxc.xcConfirm.typeEnum.error,"程序错误");
			}
		})
	}
}
function qv(){
	$(".fb").hide();
}