var name = "无";
$(document).ready(function() {
	tc();
	cha();
	$(".cfbtn").hover(function() {
		$(this).text("穿越火线");
	}, function() {
		$(this).text("");
	});
	$(".lolbtn").hover(function() {
		$(this).text("英雄联盟");
	}, function() {
		$(this).text("");
	});
	$(".jdqsbtn").hover(function() {
		$(this).text("绝地求生");
	}, function() {
		$(this).text("");
	});
	$(".nzbtn").hover(function() {
		$(this).text("逆战");
	}, function() {
		$(this).text("");
	});
	$(".qqfcbtn").hover(function() {
		$(this).text("QQ飞车");
	}, function() {
		$(this).text("");
	});
	$(".csbtn").hover(function() {
		$(this).text("反恐精英");
	}, function() {
		$(this).text("");
	});
	$(".gtabtn").hover(function() {
		$(this).text("侠盗猎车手");
	}, function() {
		$(this).text("");
	});
	$(".wzrysbtn").hover(function() {
		$(this).text("王者荣耀");
	}, function() {
		$(this).text("");
	});
	$(".hyrzsbtn").hover(function() {
		$(this).text("火影忍者");
	}, function() {
		$(this).text("");
	});
	$(".cfsbtn").hover(function() {
		$(this).text("穿越火线手游");
	}, function() {
		$(this).text("");
	});
	$(".qqfcsbtn").hover(function() {
		$(this).text("QQ飞车手游");
	}, function() {
		$(this).text("");
	});
	$(".hpjysbtn").hover(function() {
		$(this).text("和平精英");
	}, function() {
		$(this).text("");
	});
	$(".qqdzzsbtn").hover(function() {
		$(this).text("球球大作战");
	}, function() {
		$(this).text("");
	});

	// 以上无效
	$(".cfbtn").click(function() {
		$(".ssk").val(null);
		name = "穿越火线";
		num();
		ct();
	});
	$(".lolbtn").click(function() {
		$(".ssk").val(null);
		name = "英雄联盟";
		num();
		ct();
	});
	$(".jdqsbtn").click(function() {
		$(".ssk").val(null);
		name = "绝地求生";
		num();
		ct();
	});
	$(".nzbtn").click(function() {
		$(".ssk").val(null);
		name = "逆战";
		num();
		ct();
	});
	$(".qqfcbtn").click(function() {
		$(".ssk").val(null);
		name = "QQ飞车";
		num();
		ct();
	});
	$(".csbtn").click(function() {
		$(".ssk").val(null);
		name = "反恐精英";
		num();
		ct();
	});
	$(".gtabtn").click(function() {
		$(".ssk").val(null);
		name = "GTA5";
		num();
		ct();
	});
	$(".wzrysbtn").click(function() {
		$(".ssk").val(null);
		name = "王者荣耀";
		num();
		ct();
	});
	$(".hyrzsbtn").click(function() {
		$(".ssk").val(null);
		name = "火影忍者";
		num();
		ct();
	});
	$(".cfsbtn").click(function() {
		$(".ssk").val(null);
		name = "穿越火线手游";
		num();
		ct();
	});
	$(".qqfcsbtn").click(function() {
		$(".ssk").val(null);
		name = "QQ飞车手游";
		num();
		ct();
	});
	$(".hpjysbtn").click(function() {
		$(".ssk").val(null);
		name = "和平精英";
		num();
		ct();
	});
	$(".qqdzzsbtn").click(function() {
		$(".ssk").val(null);
		name = "球球大作战";
		num();
		ct();
	});
	// 以上无效
});
function num() {
	currentPage = 1;
	pageSize = 9;
	totalCount = 0;
	totalPage = 0;
}

function ct() {
	if ($(".ssk").val() != ""||$(".ssk").val!=null) {
		tc();
		cha();
	} else {
		tc2();
		cha();
	}
}

var currentPage = 1;
var pageSize = 9;
var totalCount = 0;
var totalPage = 0;
function cha() {
	var json = {
		"currentPage" : currentPage,
		"pageSize" : pageSize,
		"name" : name
	}
	$
			.post(
					"SelectShopServlet",
					json,
					function(data) {
						$(".sp").remove();
						$(".xxhr").remove();
						$
								.each(
										data,
										function(i, v) {
											var id = v.id;
											var name = v.name;
											var money = v.money;
											var leixing = v.leixing;
											var title = v.title;
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
													+ "</b><br> <span style='color: #FC3737'>"
													+ name
													+ "</span><br><span style='color: #8B8B8B'>类型："
													+ leixing
													+ "</span><br><span style='color: red;background-color: #FFEFEF;padding:1px 2px 1px 2px;font-size: 10px'>商</span> <span style='color: red;background-color: #FFEFEF;padding:1px 2px 1px 2px;font-size: 10px'>赔</span> <span style='color: red;background-color: #FFEFEF;padding:1px 2px 1px 2px;font-size: 10px'>店</span> <span style='color: red;background-color: #FFEFEF;padding:1px 2px 1px 2px;font-size: 10px'>快</span></div><div style='display: inline-block;padding: 20px;position: relative;float: right;top:20px;right:20px'><b style='color: red;'>"
													+ money
													+ "/每小时</b><br><span style='color: #8B8B8B'>押金0元丨1小时起租</span><br><button onclick='ljzc("
													+ id
													+ ")' class='ljzy'>立即租用</button><br><hr><input type='hidden' value='"
													+ id
													+ "'></div></div><hr class='xxhr'>");
											$(".zsq").append($div);
											$(".sp").addClass("sp");
											$(".sp").addClass("sp:hover");
											$(".ljzy").addClass("ljzy");
											$(".ljzy").addClass("ljzy:hover");
										});
					}, "json");
	// 查看商品方法

}
function ljzc(id) {
	var id = {
		"id" : id
	}
	$.post("Select_to_showServlet", id, function(data) {
		if (id != null) {
			location.href = "show.jsp";
		}
	});
}
// 模糊
function mohu() {
	currentPage = 1;
	var title = $(".ssk").val();
	var json = {
		"method" : "moList",
		"currentPage" : currentPage,
		"pageSize" : pageSize,
		"title" : title
	}
	$
			.post(
					"SelectServlet",
					json,
					function(data) {
						$(".sp").remove();
						$(".xxhr").remove();
						$
								.each(
										data,
										function(i, v) {
											var id = v.id;
											var name = v.name;
											var money = v.money;
											var leixing = v.leixing;
											var title = v.title;
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
													+ "</b><br> <span style='color: #FC3737'>"
													+ name
													+ "</span><br><span style='color: #8B8B8B'>类型："
													+ leixing
													+ "</span><br>&nbsp;</div><div style='display: inline-block;padding: 20px;position: relative;float: right;top:20px;right:20px'><b style='color: red;'>"
													+ money
													+ "/每小时</b><br><span style='color: #8B8B8B'>押金0元丨1小时起租</span><br><button onclick='ljzc("
													+ id
													+ ")' class='ljzy'>立即租用</button><br><hr><input type='hidden' value='"
													+ id
													+ "'></div></div><hr class='xxhr'>");
											$(".zsq").append($div);
											$(".sp").addClass("sp");
											$(".sp").addClass("sp:hover");
											$(".ljzy").addClass("ljzy");
											$(".ljzy").addClass("ljzy:hover");
										});
					}, "json");
	// 查看商品方法
	tc2();
}
// 页码
function tc2() {
	var title = $(".ssk").val();
	var json = {
		"method" : "moCount",
		"title" : title
	}
	$.post("SelectServlet", json, function(data) {
		totalCount = data;
		alert(totalCount);
		totalPage = Math.ceil(totalCount / pageSize);
		$(".yema").val(currentPage + "/" + totalPage);
	});
}

function tc() {
	$.post("TotalCountServlet", "name=" + name, function(data) {
		totalCount = data;
		totalPage = Math.ceil(totalCount / pageSize);
		$(".yema").val(currentPage + "/" + totalPage);
	});
}
function shang() {
	currentPage--;
	if (currentPage < 1) {
		currentPage = 1;
	}
	ct();
}
function xia() {
	currentPage++;
	if (currentPage > totalPage) {
		currentPage = totalPage;
	}
	ct();
}
function first() {
	currentPage = 1;
	ct();
}
function last() {
	currentPage = totalPage;
	ct();
}
// 跳转
function select() {
	location.href = "select.jsp";
}
function index() {
	location.href = "index.jsp";
}
function jm() {
	location.href = "jm.jsp";
}
function vip() {
	location.href = "vip.jsp";
}