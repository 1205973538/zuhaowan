$(document).ready(function () {
	var uName;
	var userName;
	var pwd;
	var pwd2;
	var email;
	var ck;
	var reg = /^[0-9a-zA-Z]*@([0-9a-zA-Z]+\.)[A-Za-z]+$/;
	$(".uName").blur(function () {
		uName = $(".uName").val();
		$.post("CheckUNameServlet","uName="+uName,function(data){
			if (data=="true") {
				if (uName.length > 7) {
					$(".uNamediv").text("用户名字符长度不能超过7");
					return;
				} else {
					$(".uNamediv").text("");
				}
			}else{
				$(".uNamediv").text("该用户名已被使用！");
			}
		});
	});
	$(".user").blur(function () {
		userName = $(".user").val();
		$.post("CheckUserNameServlet","userName="+userName,function(data){
			if (data=="true") {
				if (userName.length > 10) {
					$(".userdiv").text("账号长度不能超过10");
					return;
				} else {
					$(".userdiv").text("");
				}
			}else{
				$(".userdiv").text("该账号已被使用！");
			}
		})
	});
	$(".pwd").blur(function () {
		pwd = $(".pwd").val();
		if (userName.length > 10) {
			$(".pwddiv").text("密码长度不能超过10");
			return;
		} else {
			$(".pwddiv").text("");
		}
	});
	$(".pwd2").blur(function () {
		pwd = $(".pwd").val();
		pwd2 = $(".pwd2").val();
		if (pwd2 != pwd) {
			$(".pwd2div").text("两次输入的密码不相同");
			return;
		} else {
			$(".pwd2div").text("");
		}
	});
	$(".email").blur(function () {
		email = $(".email").val();
		if (reg.test(email) == false) {
			$(".emaildiv").text("邮箱格式不合格");
			return;
		} else {
			$(".emaildiv").text("");
		}
	});
	$(".ck").blur(function(){
		ck=$(".ck").is(":checked");
		if (ck==false) {
			$(".checkboxdiv").text("请阅读并同意 《平台服务协议》和《隐私政策》");
		}else{
			$(".checkboxdiv").text("");
		}
	});
});
//登录传送门
function d(){
	location.href="login.jsp";
}
//注册传送门
function z(){
	location.href="register.jsp";
}
//短信发送方法
function fs(){
	$(".hnbtn").text("已发送");
	$(".hnbtn").attr("disabled","disabled");
	var sj=$(".handNum1").val();
	var json = {
			"method":"checkHand",
			"smsMob":sj
	}
	$.post("CheckServlet",json,function(){
	})
}
//
function zc() {
	var checkboxdiv = $(".checkboxdiv").text();
	var uName=$(".uName").val();
	var userName = $(".user").val();
	var pwd = $(".pwd").val();
	var pwd2 = $(".pwd2").val();
	var email = $(".email").val();
	var ck = $(".ck").is(":checked");
	if (ck == false) {
		$(".checkboxdiv").text("请阅读并同意 《平台服务协议》和《隐私政策》");
	} else {
		$(".checkboxdiv").text("");
	}
	if (userName == "" || pwd == "" || pwd2 == "" || email == "" || checkboxdiv != ""||uName=="") {
		alert("注册失败");
		return;
	}
	var json = {
		"userName": userName,
		"pwd": pwd,
		"pwd2": pwd2,
		"email": email,
		"uName":uName
	}
	$.post("RegisterServlet", json, function (data) { 
		if (data=="false") {
			alert("注册失败！");
		}else{
			$(".alert1").show();
		}
	});
}
function cs(){
	location.href="login.jsp";
}
