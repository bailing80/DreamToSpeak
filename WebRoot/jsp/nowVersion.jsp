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
<center>
	<img alt="背景"
		src="${pageContext.request.contextPath }/static/image/nowVersion.png"
		style="width: 570px; height: 600px; position: absolute; left: 650px; top: 170px">
</center>
<div style="font-size: 50px; position: absolute; left: 730px; top: 20px">
	<br>当前已是最新版本:1.0
</div>
<input type="button" value="返回设置界面"
	onclick="location.href='${pageContext.request.contextPath }/jsp/set.jsp'"
	style="font-size: 35px; width: 320px; height: 80px; margin-left: 800px; margin-top: 780px; background: #ff0000; color: #ffffff; border: none; border-radius: 12px" />
</body>

</html>