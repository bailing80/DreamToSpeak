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
	background="${pageContext.request.contextPath }/static/image/set.jpg"
	style="background-repeat: no-repeat; background-size: 100% 100%; background-attachment: fixed"
	onload="change1()">
	<div
		style="font-size: 55px; font-family: 宋体; color: #ff0000; position: absolute; left: 470px; top: 45px">
		<strong>设置</strong>
	</div>
	<form action="./login" method="post">
		<input type="button" value="修改密码"
			onclick="location.href='${pageContext.request.contextPath }/jsp/changePassword.jsp'"
			style="font-size: 35px; width: 250px; height: 70px; position: absolute; left: 200px; top: 200px; background: #87cefa; color: #ff00ff; border: none; border-radius: 12px" />
		<input type="button" value="清除缓存"
			onclick="location.href='${pageContext.request.contextPath }/jsp/clearCache.jsp'"
			style="font-size: 35px; width: 250px; height: 70px; position: absolute; left: 200px; top: 380px; background: #87cefa; color: #9400d3; border: none; border-radius: 12px" />
		<input type="button" value="意见反馈"
			onclick="location.href='${pageContext.request.contextPath }/jsp/leavewordShow.jsp'"
			style="font-size: 35px; width: 250px; height: 70px; position: absolute; left: 200px; top: 560px; background: #87cefa; color: #ffffff; border: none; border-radius: 12px" />
		<input type="button" value="关于"
			onclick="location.href='${pageContext.request.contextPath }/jsp/about.jsp'"
			style="font-size: 35px; width: 250px; height: 70px; position: absolute; left: 600px; top: 200px; background: #87cefa; color: #8b0000; border: none; border-radius: 12px" />
		<input type="button" value="当前版本"
			onclick="location.href='${pageContext.request.contextPath }/jsp/nowVersion.jsp'"
			style="font-size: 35px; width: 250px; height: 70px; position: absolute; left: 600px; top: 380px; background: #87cefa; color: #ffff00; border: none; border-radius: 12px" />
		<input type="button" value="联系客服"
			onclick="location.href='${pageContext.request.contextPath }/jsp/callServicer.jsp'"
			style="font-size: 35px; width: 250px; height: 70px; position: absolute; left: 600px; top: 560px; background: #87cefa; color: #0000ff; border: none; border-radius: 12px" />
		<input type="button" value="返回训练界面"
			onclick="location.href='${pageContext.request.contextPath }/jsp/welcome2.jsp'"
			style="font-size: 35px; width: 270px; height: 70px; position: absolute; left: 200px; top: 740px; background: #ffff00; color: #000000; border: none; border-radius: 12px" />
		<input type="button" value="退出当前账号"
			onclick="location.href='${pageContext.request.contextPath }/jsp/login.jsp'"
			style="font-size: 35px; width: 270px; height: 70px; position: absolute; left: 600px; top: 740px; background: #00ff00; color: #ffffff; border: none; border-radius: 12px" />
	</form>
</body>
</html>