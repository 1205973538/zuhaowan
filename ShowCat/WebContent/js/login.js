$(document).ready(function() {
});
//注册传送门
function z(){
	location.href="register.jsp";
}
//登录传送门
function d(){
	location.href="login.jsp";
}
// 登录方法
function login() {
	var userName = $(".userName").val();
	var pwd = $(".pwd").val();
	if (userName == ""||pwd == "") {
		window.wxc.xcConfirm("用户名或密码未填写", window.wxc.xcConfirm.typeEnum.error,"登陆失败");
		return;
	}
	var user = {
		"userName" : userName,
		"pwd" : pwd
	}
	$.post("LoginServlet",user,function(data){
		if (data=="true") {
			$(".alert1").show();
		}else{
			window.wxc.xcConfirm("账号或密码错误", window.wxc.xcConfirm.typeEnum.error,"登陆失败");
		}
	});
}
function cs(){
	location.href="userCenter.jsp";
}