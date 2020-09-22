var uName;
$(document).ready(function() {
	xx();
	j();
	j2();
});
function xx() {
	var json = {
		"method" : "select",
	}
	$.post("UserCenterServlet", json, function(data) {
		if (data == false) {
			location.href = "alert.jsp";
		} else {
			var id = data.id;
			var uName = data.uName;
			var gold = data.gold;
			var zNum = data.zNum;
			$(".uName").text(uName);
			$(".gold").text(gold);
			$(".zNum").text(zNum);
		}
	}, "json");
}
// 金额点击方法
function j() {
	$(".Cmoney").find("button").click(function() {
		$(".Cmoney").find("button").css("border", "1px #DBDBDB solid");
		$(this).css("border", "2px #FF0026 solid");
		$(".mmm").text($(this).find("span").text());
		$(".qianqian2").val("");
	});
}
//金额输入方式
function j2(){
	$(".qianqian2").change(function() {
		$(".Cmoney").find("button").css("border", "1px #DBDBDB solid");
		$(".mmm").text($(".qianqian2").val());
	});
}
//检验
function jy() {
	var gold = $(".gold").text();
	gold = parseFloat(gold);
	var gold1 = $(".tmoney").val();
	var rag = /^[0-9]+.?[0-9]*$/;
	gold1 = parseFloat(gold1);
	if (rag.test(gold1) == false || gold1 <= 0) {
		$(".ts").text("请输入正整数！");
		$(".mmm1").text(1);
		return;
	} else if (gold1 > gold) {
		$(".ts").text("提现金额大于账户可用余额!");
		$(".mmm1").text(1);
		return;
	}else{
		$(".ts").text(null);
	}
	$(".mmm1").text(gold1);
}
//提现方法
function yes1() {
	var gold = $(".gold").text();
	gold = parseFloat(gold);
	var gold1 = $(".tmoney").val();
	var rag = /^[0-9]+.?[0-9]*$/;
	gold1 = parseFloat(gold1);
	if (rag.test(gold1) == false || gold1 <= 0) {
		$(".ts").text("请输入正整数！");
		$(".mmm1").text(1);
		return;
	} else if (gold1 > gold) {
		$(".ts").text("提现金额大于账户可用余额!");
		$(".mmm1").text(1);
		return;
	}else{
		$(".mmm1").text(gold1);
		$(".ts").text(null);
		$(".alert").show();
	}
}
//充值方法
function yes() {
	$(".alert").show();
}
function cz() {
	$(".txt").text("充值");
	$(".Zmoney").hide();
	$(".znum").hide();
	$(".Cmoney2").show();
	$(".Tmoney").hide();
	$(".Cmoney").show();
}
function qx() {
	$(".alert").hide();
}
function tx() {
	$(".txt").text("提现");
	$(".znum").hide();
	$(".Cmoney").hide();
	$(".Tmoney").show();
	$(".Cmoney2").hide();
	$(".Zmoney").hide();
}
function qd() {
	var zgold;
	if ($(".txt").text()=="充值充值充值") {
		var gold = $(".gold").text();
		gold = parseFloat(gold);
		var gold1 = $(".mmm").text();
		gold1 = parseInt(gold1);
		 zgold= gold1 + gold;
	}else{
		var gold = $(".gold").text();
		gold = parseFloat(gold);
		var gold1 = $(".tmoney").val();
		gold1 = parseFloat(gold1);
		zgold= gold - gold1;
	}
	var json = {
		"method" : "updataAddMoney",
		"uName" : $(".uName").text(),
		"gold" : zgold
	}
	$.post("UserCenterServlet", json, function(data) {
		if (data == "true") {
			$(".alert").hide();
			$(".alert1").show();
		} else {
			$(".alert").hide();
			window.wxc.xcConfirm("系统错误！请联系网站管理员",
					window.wxc.xcConfirm.typeEnum.error, "支付失败");
		}
	})
}
//支付方法
//支付宝支付
function zfb(){
$(".Cmoney2").hide();
$(".Zmoney").show();
}
function zfbzf(){
	var gold = $(".gold").text();
	gold = parseFloat(gold);
	var gold1 = $(".mmm").text();
	gold1 = parseInt(gold1);
	var zgold= gold1 + gold;
var money = $(".mmm").text();
var uName = $(".uName").text();
location.href="zgfServlet?money="+money+"&zgold="+zgold+"&uName="+uName;
}
//银行卡支付
function yhk(){
$(".Cmoney2").show();
$(".Zmoney").hide();
}
//跳转方法
function gr() {
	location.href = "userCenter.jsp";
}
function qqd() {
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
}
function car(){
	location.href="center_car.jsp";
}