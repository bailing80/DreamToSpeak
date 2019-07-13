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
	background="${pageContext.request.contextPath }/static/image/chunyuxuexichushijiemian.jpg"
	style="background-repeat: no-repeat; background-size: 100% 100%; background-attachment: fixed">
	<div
		style="font-size: 80px; font-family: 宋体; color: #ff0000; position: absolute; left: 720px; top: 100px">
		<strong>请选择练习模式</strong>
	</div>
	<form action="./login" method="post">
		<input type="button" value="静态唇语学习"
			onclick="location.href='${pageContext.request.contextPath }/jsp/chunyuxuexichushijiemian.jsp'"
			style="font-size: 35px; width: 400px; height: 100px; margin-left: 250px; margin-top: 350px; background: #4B9F37; color: #ffffff; border: none; border-radius: 12px" />
		<br> <br> <br> <input type="button" value="vr-三维唇语学习"
			onclick="location.href='${pageContext.request.contextPath }/jsp/vr3chunyulianxixitong.jsp'"
			style="font-size: 35px; width: 400px; height: 100px; margin-left: 250px; margin-top: 100px; background: #ff0000; color: #ffffff; border: none; border-radius: 12px" />
	</form>
</body>
</html>