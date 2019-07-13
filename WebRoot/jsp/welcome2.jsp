<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>听障儿童言语康复训练软件</title>
</head>
<body
	background="${pageContext.request.contextPath }/static/image/welcome2.jpg"
	style="background-repeat: no-repeat; background-size: 100% 100%; background-attachment: fixed;">
	<div
		style="font-size: 60px; font-family: 宋体; color: #ff0000; position: absolute; left: 500px; top: 70px">
		<strong>欢迎来到听障儿童言语康复训练系统</strong>
	</div>
	<input type="button" value="我的" onclick="location.href='${pageContext.request.contextPath }/jsp/my.jsp'"
		style="font-size: 35px; width: 200px; height: 70px; margin-left: 1700px; background: #ffff00; color: #000000; border: none; border-radius: 12px" />
	<input type="button" value="设置" onclick="location.href='${pageContext.request.contextPath }/jsp/set.jsp'"
		style="font-size: 35px; width: 200px; height: 70px; margin-left: 1700px; margin-top: 30px; background: #ff0000; color: #000000; border: none; border-radius: 12px" />
	<div
		style="font-size: 50px; font-family: 宋体; color: #0000ff; position: absolute; left: 275px; top: 225px">
		<strong>请选择练习模式</strong>
	</div>
	<form action="./login" method="post">
		<input type="button" value="呼吸训练系统"
			onclick="location.href='${pageContext.request.contextPath }/jsp/huxilianxixitongjiemian.jsp'"
			style="font-size: 35px; width: 400px; height: 100px; margin-left: 250px; margin-top: 220px; background: #4B9F37; color: #ffffff; border: none; border-radius: 12px" />
		<br> <br> <br> <input type="button" value="发音练习系统"
			onclick="location.href='${pageContext.request.contextPath }/jsp/fayinlianxichushijiemian.jsp'"
			style="font-size: 35px; width: 400px; height: 100px; margin-left: 250px; margin-top: 30px; background: #ff0000; color: #ffffff; border: none; border-radius: 12px" />
		<br> <br> <br> <input type="button" value="唇语学习系统"
			onclick="location.href='${pageContext.request.contextPath }/jsp/chunyuxueximoshixuanzejiemian.jsp'"
			style="font-size: 35px; width: 400px; height: 100px; margin-left: 250px; margin-top: 30px; background: #0000ff; color: #ffffff; border: none; border-radius: 12px" />
	</form>
</body>
</html>