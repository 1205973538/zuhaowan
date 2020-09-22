<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>温馨提示</title>
</head>
<script>
	function login() {
		location.href="login.jsp";
	}
</script>
<body style="background-color: #ACADAE;">
	<div align="center">
		<div
			style="background-color: white; width: 750px; height: 380px; border-radius: 10px">
			<div style="margin: 20px">
				<b
					style="margin-top: 30px; position: absolute; left: 620px; top: 10px">温馨提示</b>
				<div style="padding-top: 50px">
					<hr>
					<h2 style="margin-top: 100px; margin-bottom: 100px;">请先登录!</h2>
					<hr>
					<button onclick="login()"
						style="height: 50px; width: 100px; font-size: 18px; background-color: #0079D7; border-color: #0079D7; border-radius: 10px; color: white; font-weight: bold; float: right; margin-right: 30px">确定</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>