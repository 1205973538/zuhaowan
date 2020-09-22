var currentPage = 1;
var pageSize = 5;
var totalPage = 0;
var totalCount = 0;
$(document).ready(function() {
	sc();
	ym();
});
// 收藏列表方法
function sc() {
	var json = {
		"method" : "select"
	}
	$
			.post(
					"UserCenterServlet",
					json,
					function(data) {
						var json2 = {
							"method" : "scShopList",
							"userId" : data.id,
							"currentPage" : currentPage,
							"pageSize" : pageSize
						}
						$
								.post(
										"UserCenterServlet",
										json2,
										function(result) {
											if (result !=null) {
												$(".my").hide();
												$
														.each(
																result,
																function(i, v) {
																	var name = v.name;
																	var id = v.id;
																	var pName = v.pName;
																	var money = v.money;
																	var $td = $("<tr class='tr1'><td>"
																			+ name
																			+ "</td><td>"
																			+ pName
																			+ "</td><td width='130px'>"
																			+ money
																			+ "</td><td width='130px'>0:00-24:00</td><td width='105px' align='center'><button style='background: #0EA0E0; color: white; border-radius: 10px' onclick='ckxq("
																			+ id
																			+ ")'>查看账号详情</button></td><td width='105px' align='center'><button style='background: red; color: white; border-radius: 10px' onclick='yclb("
																			+ id
																			+ ")'>移出收藏列表</button></td></tr>");
																	$(".table")
																			.append(
																					$td);
																});
											} else {
												$(".my").show();
											}
										}, "json");
					}, "json");
}
// 移除收藏方法
function yclb(shopId) {
	var json = {
		"method" : "select"
	}
	$.post("UserCenterServlet", json, function(data) {
		var json2 = {
			"method" : "deletescShop",
			"userId" : data.id,
			"shopId" : shopId
		}
		$.post("UserCenterServlet", json2, function(result) {
			if (result == "true") {
				$(".alert").show();
			} else {

			}
		});
	}, "json");

}
// 移除成功刷新
function qd() {
	ym();
	if ((totalCount-1)%pageSize==0) {
		$(".tr1").remove();
		shang();
	}else{
		$(".tr1").remove();
		sc();
		ym();
	}
	$(".alert").hide();
}
// 页码
function ym() {
	var json = {
		"method" : "select"
	}
	$.post("UserCenterServlet", json, function(data) {
		var json2 = {
			"method" : "count",
			"userId" : data.id,
		}
		$.post("UserCenterServlet", json2, function(data) {
			totalCount = data;
			totalPage = Math.ceil(totalCount / pageSize);
			$(".yema").val(currentPage + "/" + totalPage);
		});
	}, "json");

}
function shang() {
	currentPage--;
	if (currentPage < 1) {
		currentPage = 1;
	}
	$(".tr1").remove();
	sc();
	ym();
}
function xia() {
	currentPage++;
	if (currentPage > totalPage) {
		currentPage = totalPage;
	}
	$(".tr1").remove();
	sc();
	ym();
}
function first() {
	currentPage = 1;
	$(".tr1").remove();
	sc();
	ym();
}
function last() {
	currentPage = totalPage;
	$(".tr1").remove();
	sc();
	ym();
}

// 查看详情方法
function ckxq(id) {
	var id = {
		"id" : id
	}
	$.post("Select_to_showServlet", id, function(data) {
		if (id != null) {
			location.href = "show.jsp";
		}
	});
}
// 跳转
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
function jm() {
	location.href = "jm.jsp";
}
function vip() {
	location.href = "vip.jsp";
}
function car() {
	location.href = "center_car.jsp"
}