<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>听障儿童言语康复训练软件</title>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath }/css/main.css">
<style>
.div {
	width: 600px;
	height: 200px;
	font-size: 13px;
}

.div select {
	width: 200px;
}

.div select option {
	width: 150px;
	height: 30px;
}
</style>
</head>
<body
	background="${pageContext.request.contextPath }/static/image/zhengtirenduyinjie.jpg"
	style="background-repeat: no-repeat; background-size: 100% 100%; background-attachment: fixed">
	<div
		style="font-size: 50px; color: #00ffff; position: absolute; left: 850px; top: 70px">发音训练</div>
	<form action="zcsave.jsp" method="post">

		<br>
		<div
			style="font-size: 50px; color: #ff0000; position: absolute; height: 80px; margin-left: 220px; margin-top: 250px;">整体认读音节：</div>
		<select id="time" name="sheng">
			<option value="zhi" name="time">&nbsp&nbsp&nbsp&nbsp&nbspzhi</option>
			<option value="chi"name="time">&nbsp&nbsp&nbsp&nbsp&nbspchi</option>
			<option value="shi"name="time">&nbsp&nbsp&nbsp&nbsp&nbspshi</option>
			<option value="ri"name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspri</option>
			<option value="zi"name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspzi</option>
			<option value="ci"name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspci</option>
			<option value="si"name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspsi</option>
			<option value="yi"name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspyi</option>
			<option value="wu"name="time">&nbsp&nbsp&nbsp&nbsp&nbspwu</option>
			<option value="yu"name="time">&nbsp&nbsp&nbsp&nbsp&nbspyu</option>
			<option value="ye"name="time">&nbsp&nbsp&nbsp&nbsp&nbspye</option>
			<option value="yue"name="time">&nbsp&nbsp&nbsp&nbsp&nbspyue</option>
			<option value="yuan"name="time">&nbsp&nbsp&nbspyuan</option>
			<option value="yin"name="time">&nbsp&nbsp&nbsp&nbspyin</option>
			<option value="yun"name="time">&nbsp&nbsp&nbsp&nbspyun</option>
			<option value="ying"name="time">&nbsp&nbsp&nbsp&nbspying</option>

		</select>
		</div>

		<br> <br> <br> <br> <input type="button"
			value="开始练习" onclick="save2()"
			style="font-size: 35px; width: 320px; height: 80px; margin-left: 200px; margin-top: 600px; background: #ff0000; color: #ffffff; border: none; border-radius: 12px" />
	</form>
</body>
<script>
		function save2() {
			var ztrdyjStr = document.getElementById("time").value;
			location.href = "${pageContext.request.contextPath }/jsp/fayinlianxijiemianzhengtirenduyinjie.jsp?ztrdyj=" + ztrdyjStr;
		}
	</script>

</html>