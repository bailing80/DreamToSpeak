<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>听障儿童言语康复训练软件</title>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath }/css/main.css">
</head>
<body
	background="${pageContext.request.contextPath }/static/image/changepassword.jpg"
	style="background-repeat: no-repeat; background-size: 100% 100%; background-attachment: fixed">
	<div style="width: 100%; height: 100%">
		<br>
		<div
			style="background: #ffffff; width: 600px; height: 650px; position: absolute; left: 200px; top: 150px">
			<form action="./changepassword" method="post">
				<br>
				<h3 style="color: #ff0000; font-size: 40px">
					<center>找回密码</center>
				</h3>
				<br>
				<center>
					<img alt="用户名"
						src="${pageContext.request.contextPath }/static/image/username.jpg"
						style="vertical-align: bottom" /><input type="text"
						name="username" placeholder="用户名/邮箱/手机号" size="50px"
						style="height: 50px; vertical-align: bottom" />
				</center>
				<center>
					<br> <br> <img alt="用户名"
						src="${pageContext.request.contextPath }/static/image/username.jpg"
						style="vertical-align: bottom" /><input type="text"
						name="username" placeholder="请输入六位验证码" size="30px"
						style="height: 50px; vertical-align: bottom" />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input
						type="button" value="获取验证码"
						style="width: 100px; height: 40px; background: #ffffab; color: #ff0000; border: none" />
				</center>
				<br> <br>
				<center>
					<img alt="密码"
						src="${pageContext.request.contextPath }/static/image/password.jpg"
						style="vertical-align: bottom" /><input type="password"
						name="password" placeholder="请输入新的密码" size="50px"
						style="height: 50px; vertical-align: bottom" />
				</center>
				<center>
					<br> <br> <br> <input type="button" value="提交"
						onclick="location.href='denglujiemian.html'"
						style="width: 250px; height: 50px; background: #ff0000; color: #ffffff; border: none; border-radius: 12px" />
				</center>
				<br> <br> <a
					href="${pageContext.request.contextPath }/jsp/login.jsp"
					style="color: #ff0000; font-size: 16px; float: right; margin-right: 50px">返回登录</a>
			</form>
		</div>
	</div>
</body>
</html>