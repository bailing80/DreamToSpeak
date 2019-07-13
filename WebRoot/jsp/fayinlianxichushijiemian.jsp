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
	background="${pageContext.request.contextPath }/static/image/fayinlianxichushijiemian.png"
	style="background-repeat: no-repeat; background-size: 100% 100%; background-attachment: fixed">
	<div
		style="font-size: 50px; position: absolute; left: 870px; top: 50px">发音练习</div>
	<div
		style="font-size: 50px; color: #ff0000; position: absolute; left: 620px; top: 150px">请选择要联系到的目标音节或字</div>
	<form action="./login" method="post">
		<input type="button" value="声母表"
			onclick="location.href='${pageContext.request.contextPath }/jsp/shengmubiao.jsp'"
			style="font-size: 35px; width: 400px; height: 100px; margin-left: 750px; margin-top: 270px; background: #4B9F37; color: #ffffff; border: none; border-radius: 12px" />
		<br> <br> <input type="button" value="韵母表"
			onclick="location.href='${pageContext.request.contextPath }/jsp/yunmubiao.jsp'"
			style="font-size: 35px; width: 400px; height: 100px; margin-left: 750px; margin-top: 30px; background: #ff0000; color: #ffffff; border: none; border-radius: 12px" />
		<br> <br> <input type="button" value="整体认读音节"
			onclick="location.href='${pageContext.request.contextPath }/jsp/zhengtirenduyinjie.jsp'"
			style="font-size: 35px; width: 400px; height: 100px; margin-left: 750px; margin-top: 30px; background: #0000ff; color: #ffffff; border: none; border-radius: 12px" "/>
		<br> <br> <input type="button" value="选择汉字练习"
			onclick="location.href='${pageContext.request.contextPath }/jsp/xuanzehanzilianxi.jsp'"
			style="font-size: 35px; width: 400px; height: 100px; margin-left: 750px; margin-top: 30px; background: #ECC230; color: #ffffff; border: none; border-radius: 12px" "/>
		<center>
			<input type="button " value=" "
				style="background: url(8.2.jpg); width: 50px; height: 37px; border: none" />
		</center>
	</form>
</body>
</html>