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
	background="${pageContext.request.contextPath }/static/image/practiceRecords.jpg"
	style="background-repeat: no-repeat; background-size: 100% 100%; background-attachment: fixed"
	onload="change1()">
	<h3
		style="color: #ffff00; font-size: 50px; margin-left: 350px; margin-top: 100px;">练习的纪录</h3>
	<img style="vertical-align: bottom" />
	<input type="text "
		style="font-size: 30px; width: 530px; height: 500px; margin-left: 220px; margin-top: 35px;"
		/ color="#D8D8D8" placeholder="暂无练习记录" size="50px"
		style="height:50px;vertical-align:bottom" />
	<div>
		<input type="button" value="返回我的界面"
			onclick="location.href='${pageContext.request.contextPath }/jsp/my.jsp'"
			style="font-size: 35px; width: 270px; height: 70px; margin-left: 350px; margin-top: 30px; background: #ff0000; color: #ffffff; border: none; border-radius: 12px" />
	</div>
</body>
</html>