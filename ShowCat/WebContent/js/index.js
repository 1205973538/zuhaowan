var arr = new Array("image/g1.jpg", "image/g2.jpg", "image/g3.jpg",
		"image/g4.jpg", "image/g5.jpg", "image/g6.jpg");
var i = 0;
$(document).ready(function() {

	$(".lunList>li").click(function(){
		i=$(this).val();
		$(".lunImg").attr("src",arr[i]);
	});
});
function shang() {
	i--;
	if (i<=0) {
		i=0;
	}
	$(".lunImg").attr("src",arr[i]);
}
function xia() {
	i++;
	if (i>=5) {
		i=5;
	}
	$(".lunImg").attr("src",arr[i]);
}
// 跳转
//function login() {
//	location.href = "login.jsp";
//}
function register() {
	location.href = "register.jsp";
}
function vip() {
	location.href = "vip.jsp";
}
function jm() {
	location.href = "jm.jsp";
}
function index() {
	location.href = "index.jsp";
}