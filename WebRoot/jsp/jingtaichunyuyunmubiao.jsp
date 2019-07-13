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
	background="${pageContext.request.contextPath }/static/image/yunmubiao.jpg"
	style="background-repeat: no-repeat; background-size: 100% 100%; background-attachment: fixed">
	<div
		style="font-size: 50px; color: #00ffff; position: absolute; left: 850px; top: 70px">静态唇语学习</div>
	<form action="zcsave.jsp" method="post">
		<br>
		<div
			style="font-size: 50px; color: #ff0000; position: absolute; height: 80px; margin-left: 260px; margin-top: 250px;">韵母表：</div>
		<select id="time"name="sheng">
			<option value="a" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspa</option>
			<option value="o" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspo</option>
			<option value="e" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspe</option>
			<option value="i" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspi</option>
			<option value="u" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspu</option>
			<option value="ü" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspü</option>
			<option value="ai" name="time">&nbsp&nbsp&nbsp&nbsp&nbspai</option>
			<option value="ei" name="time">&nbsp&nbsp&nbsp&nbsp&nbspei</option>
			<option value="ui" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspui</option>
			<option value="ao" name="time">&nbsp&nbsp&nbsp&nbsp&nbspao</option>
			<option value="ou" name="time">&nbsp&nbsp&nbsp&nbsp&nbspou</option>
			<option value="iu" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspiu</option>
			<option value="ie" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspie</option>
			<option value="üe" name="time">&nbsp&nbsp&nbsp&nbsp&nbspüe</option>
			<option value="er" name="time">&nbsp&nbsp&nbsp&nbsp&nbsper</option>
			<option value="an" name="time">&nbsp&nbsp&nbsp&nbsp&nbspan</option>
			<option value="en" name="time">&nbsp&nbsp&nbsp&nbsp&nbspen</option>
			<option value="in" name="time">&nbsp&nbsp&nbsp&nbsp&nbspin</option>
			<option value="un" name="time">&nbsp&nbsp&nbsp&nbsp&nbspun</option>
			<option value="ün" name="time">&nbsp&nbsp&nbsp&nbsp&nbspün</option>
			<option value="ang" name="time">&nbsp&nbsp&nbsp&nbspang</option>
			<option value="eng" name="time">&nbsp&nbsp&nbsp&nbspeng</option>
			<option value="ing" name="time">&nbsp&nbsp&nbsp&nbsping</option>
			<option value="ong" name="time">&nbsp&nbsp&nbsp&nbspong</option>
		</select>
		</div>
		<br> <br> <br> <br> <input type="button"
			value="开始练习" onclick="save()"
			style="font-size: 35px; width: 320px; height: 80px; margin-left: 200px; margin-top: 600px; background: #ff0000; color: #ffffff; border: none; border-radius: 12px" />
	</form>
</body>
<script>
		function save() {
			var ymStr = document.getElementById("time").value;
			location.href = "${pageContext.request.contextPath }/jsp/chunyulianxijiemianyunmunbiao.jsp?ym=" + ymStr;
		}
	</script>
</html>