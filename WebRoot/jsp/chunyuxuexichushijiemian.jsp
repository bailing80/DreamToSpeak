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
	<input type="button" value="返回主界面"
		onclick="location.href='http://localhost:8080/FH-WEB/webproduct.html'"
		style="font-size: 35px; width: 200px; height: 70px; margin-left: 1680px; background: #ffff00; color: #000000; border: none; border-radius: 12px" />
	<div
		style="font-size: 60px; position: absolute; left: 870px; top: 30px">静态唇语学习</div>
	<div
		style="font-size: 50px; color: #ff0000; position: absolute; left: 230px; top: 130px">请选择要练习的目标音节或字</div>
	<form action="./login" method="post">
		<br> <br> <br> <input type="button" value="声母表"
			onclick="location.href='${pageContext.request.contextPath }/jsp/jingtaichunyushengmubiao.jsp'"
			style="font-size: 35px; width: 400px; height: 100px; margin-left: 350px; margin-top: 90px; background: #4B9F37; color: #ffffff; border: none; border-radius: 12px" />
		<br> <br> <br> <input type="button" value="韵母表"
			onclick="location.href='${pageContext.request.contextPath }/jsp/jingtaichunyuyunmubiao.jsp'"
			style="font-size: 35px; width: 400px; height: 100px; margin-left: 350px; margin-top: 30px; background: #ff0000; color: #ffffff; border: none; border-radius: 12px" />
		<br> <br> <br> <input type="button" value="整体认读音节"
			onclick="location.href='${pageContext.request.contextPath }/jsp/jingtaichunyuzhengtirenduyinjie.jsp'"
			style="font-size: 35px; width: 400px; height: 100px; margin-left: 350px; margin-top: 30px; background: #0000ff; color: #ffffff; border: none; border-radius: 12px" "/>
		<br> <br> <br> <input type="button" value="选择汉字练习"
			onclick="location.href='${pageContext.request.contextPath }/jsp/jingtaichunyuxuanzehanzilianxi.jsp'"
			style="font-size: 35px; width: 400px; height: 100px; margin-left: 350px; margin-top: 30px; background: #e82662; color: #ffffff; border: none; border-radius: 12px" "/>
	</form>
</body>
</html>