$(document).ready(function() {
	findName();
	//
	$(".name").change(function() {
		var a = $(".name").val();
		var flag = false;
		$.post("Center_fbServlet", null, function(data) {
			$.each(data, function(i, v) {
				if (v.gameName == a) {
					flag = true;
					$(".leixing").val(v.gameLx);
					$(".leixing").text(v.gameLx);
					return;
				}
			});
			if (flag == false) {
				$(".leixing").val("选择类型");
				$(".leixing").text("选择类型");
			}
		}, "json");
	});
	// ///
	$(".name").blur(function() {
		if ($(this).val() == "选择游戏") {
			$(".nameB").show();
			return;
		} else {
			$(".nameB").hide();
			return;
		}
	});
	$(".number").blur(function() {
		if ($(this).val() == "") {
			$(".numberB").show();
			return;
		} else {
			$(".numberB").hide();
			return;
		}
	});
	$(".pwd").blur(function() {
		if ($(this).val() == "") {
			$(".pwdB").show();
			return;
		} else {
			$(".pwdB").hide();
			return;
		}
	});
	$(".pName").blur(function() {
		if ($(this).val() == "") {
			$(".pNameB").show();
			return;
		} else {
			$(".pNameB").hide();
			return;
		}
	});
	$(".title").blur(function() {
		if ($(this).val() == "") {
			$(".titleB").show();
		} else {
			$(".titleB").hide();
		}
		if ($(this).val().length>28) {
			$(".titleT").show();
			return;
		} else {
			$(".titleT").hide();
			return;
		}
	});
	$(".money").blur(function() {
		if ($(this).val() == "") {
			$(".moneyB").show();
			return;
		} else {
			$(".moneyB").hide();
			return;
		}
	});
	var rag = /^[0-9]+.?[0-9]*$/;
	$(".money").blur(function() {
		if (rag.test($(this).val())) {
			$(".moneyC").hide();
			return;
		} else {
			$(".moneyC").show();
		}
		if ($(this).val() == "") {
			$(".moneyB").show();
			return;
		} else {
			$(".moneyB").hide();
			return;
		}
	});
});
// 查找游戏名方法
function findName() {
	$.post("Center_fbServlet", null, function(data) {
		$.each(data, function(i, v) {
			var gameName = v.gameName;
			var $xx = $("<option value=" + gameName + ">" + gameName
					+ "</option>");
			$(".name").append($xx);
		});
	}, "json");
}
// 发布方法
function fabu() {
var flag = true;
	if ($(".name").val() == "选择游戏") {
		$(".nameB").show();
		flag=false;
	} else {
		$(".nameB").hide();
	}
	if ($(".number").val() == "") {
		$(".numberB").show();
		flag=false;
	} else {
		$(".numberB").hide();
	}
	if ($(".pwd").val() == "") {
		$(".pwdB").show();
		flag=false;
	} else {
		$(".pwdB").hide();
	}
	if ($(".pName").val() == "") {
		$(".pNameB").show();
		flag=false;
	} else {
		$(".pNameB").hide();
	}
	if ($(".title").val() == "") {
		$(".titleB").show();
		flag=false;
	} else {
		$(".titleB").hide();
	}
	if ($(".title").val().length >28) {
		$(".titleT").show();
		flag=false;
	} else {
		$(".titleT").hide();
	}
	if ($(".money").val() == "") {
		$(".moneyB").show();
		flag=false;
	} else {
		$(".moneyB").hide();
	}
	var rag = /^[0-9]+.?[0-9]*$/;
	if (rag.test($(".money").val())) {
		$(".moneyC").hide();
	} else {
		$(".moneyC").show();
		flag=false;
	}
	if ($(".money").val() == "") {
		$(".moneyB").show();
		flag=false;
	} else {
		$(".moneyB").hide();
	}
	if (flag==false) {
		alert("发布信息尚未填写完整！");
		return;
	}else{
		var json = {
				"method" : "select"
			}
			$.post("UserCenterServlet", json, function(data) {
				var name=$(".name").val();
				var money=$(".money").val();
				var leixing=$(".leixing").text();
				var title=$(".title").val();
				var number=$(".number").val();
				var pwd=$(".pwd").val();
				var ms = $(".ms").val();
				var pName=$(".pName").val();
				var json2 = {
						"id" : data.id,
						"name":name,
						"money":money,
						"leixing":leixing,
						"title":title,
						"number":number,
						"pwd":pwd,
						"ms":ms,
						"pName":pName
					}
				$.post("Center_fbAddServlet",json2,function(data){
					if (data=="true") {
						alert("发布成功");
						location.href="center_yfb.jsp";
					}else{
						alert("发布失败");
						return;
					}
				});
			},"json");
	}
}
//跳转
function gr(){
	location.href = "userCenter.jsp";
}
function fb(){
	location.href  = "center_fb.jsp";
}
function index(){
	location.href="index.jsp";
}
function yfb(){
	location.href="center_yfb.jsp";
}
function jm(){
	location.href="jm.jsp";
}
function vip(){
	location.href="vip.jsp";
}function car(){
	location.href="center_car.jsp"
}