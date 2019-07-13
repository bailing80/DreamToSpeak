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
	background="${pageContext.request.contextPath }/static/image/feedBack.png"
	style="background-repeat: no-repeat; background-size: 100% 100%; background-attachment: fixed">
	<h3
		style="color: #ff0000; font-size: 50px; margin-left: 1250px; margin-top: 100px;">意见反馈</h3>
	<img style="vertical-align: bottom" />
	<input type="text "
		style="width: 530px; height: 500px; margin-left: 1100px; margin-top: 35px;"
		/ color="#D8D8D8"
		placeholder="我们的成长离不开您的支持，请描述你的详细需求和服务体验的反馈， 我们会尽快帮您解决。" size="50px"
		style="height:50px;vertical-align:bottom" />
	<br>
	<br>
	<br>
	<input type="button" value="提交"
		onclick="location.href='${pageContext.request.contextPath }/jsp/set.jsp'"
		style="width: 250px; height: 50px; margin-left: 1250px; margin-top: 5px; background: #0000ff; color: #ffffff; border: none; border-radius: 12px" />
</body>
</html>