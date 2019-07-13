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
	background="${pageContext.request.contextPath }/static/image/shengmubiao.jpg"
	style="background-repeat: no-repeat; background-size: 100% 100%; background-attachment: fixed">
	<div
		style="font-size: 50px; color: #00ffff; position: absolute; left: 850px; top: 70px">静态唇语学习</div>
	<form action="zcsave.jsp" method="post">
		<br>
		<div
			style="font-size: 50px; color: #ff0000; position: absolute; height: 80px; margin-left: 260px; margin-top: 250px;">声母表：</div>
		<select id="time"name="sheng">
			<option value="b" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspb</option>
			<option value="p" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspp</option>
			<option value="m" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspm</option>
			<option value="f" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspf</option>
			<option value="d" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspd</option>
			<option value="t" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspt</option>
			<option value="n" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspn</option>
			<option value="l" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspl</option>
			<option value="g" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspg</option>
			<option value="k" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspk</option>
			<option value="h" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsph</option>
			<option value="j" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspj</option>
			<option value="q" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspq</option>
			<option value="x" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspx</option>
			<option value="zh" name="time">&nbsp&nbsp&nbsp&nbsp&nbspzh</option>
			<option value="ch" name="time">&nbsp&nbsp&nbsp&nbsp&nbspch</option>
			<option value="sh" name="time">&nbsp&nbsp&nbsp&nbsp&nbspsh</option>
			<option value="r" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspr</option>
			<option value="z" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspz</option>
			<option value="c" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspc</option>
			<option value="s" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsps</option>
			<option value="y" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspy</option>
			<option value="w" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspw</option>
		</select>
		</div>
		<br> <br> <br> <br> <input type="button"
			value="开始练习" onclick="save()"
			style="font-size: 35px; width: 320px; height: 80px; margin-left: 200px; margin-top: 600px; background: #ff0000; color: #ffffff; border: none; border-radius: 12px" />
	</form>
</body>
<script>
		function save() {
			var smStr = document.getElementById("time").value;
			location.href = "${pageContext.request.contextPath }/jsp/chunyulianxijiemianshengmubiao.jsp?sm=" + smStr;
		}
	</script>
</html>