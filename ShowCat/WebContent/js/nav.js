$(document).ready(function(){
	de();
});
//登录传送方法
function de(){
	$.post("IndexServlet", null, function(data) {
		if (data == "null") {
			$(".la").text("请登录");
			$(".laa").hide();
			$(".laaa").hide();
			$(".hello").text("你好！")
		} else {
			$(".la").text(data);
			$(".laa").show();
			$(".laaa").show();
			$(".hello").text("欢迎你！");
		}
	});
}
//退出登录方法
function tui(){
	$.post("TuiServlet",null,function(){
		$(".alertW").show();
	});
}
function cs1(){
	de();
	location.href="index.jsp";
}
function qx1(){
	$(".alertW").hide();
}
function qd1(){
	$(".alertW").hide();
	$(".alertZx").show();
}
//跳转
function login() {
	if ($(".la").text()=="请登录"){
		location.href = "login.jsp";
	}else{
		location.href="userCenter.jsp";
	}
}
function login1() {
		location.href = "login.jsp";
}
function resgister() {
	location.href = "register.jsp";
}
function select() {
	location.href = "select.jsp";
}
function userCenter(){
	location.href="userCenter.jsp";
}