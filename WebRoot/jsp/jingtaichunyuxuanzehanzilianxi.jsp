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
#time {
	font-size: 75px;
	width: 400px;
	height: 120px;
	position: absolute;
	top: 450px;
	left: 1180px;
}

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
	background="${pageContext.request.contextPath }/static/image/xuanzehanzilianxi.jpg"
	style="background-repeat: no-repeat; background-size: 100% 100%; background-attachment: fixed"
	>
	<div
		style="font-size: 50px; color: #ff0000; position: absolute; left: 850px; top: 70px">常用的100个汉字</div>
	<form action="zcsave.jsp" method="post">
		<br>
		<div style="font-size: 45px; color: #ff0000; position: absolute; height: 80px; margin-left: 1200px; margin-top: 250px;">请选择汉字：</div>
	<select id="time"name="sheng">
			<option value="de"  name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp的</option>
			<option value="yi"  name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp一</option>
			<option value="shi" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp是</option>
			<option value="le" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp了</option>
			<option value="wo" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp我</option>
			<option value="bu" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp不</option>
			<option value="ren" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp人</option>
			<option value="zai" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp在</option>
			<option value="ta" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp她</option>
			<option value="you" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp有</option>
			<option value="zhe" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp这</option>
			<option value="ge" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp个</option>
			<option value="上" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp上</option>
			<option value="门" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp门</option>
			<option value="来" name="time">&nbsp&nbsp&nbsp&nbsp&nbsplai</option>
			<option value="到" name="time">&nbsp&nbsp&nbsp&nbsp&nbspdao</option>
			<option value="大" name="time">&nbsp&nbsp&nbsp&nbsp&nbspda</option>
			<option value="地" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspdi</option>
			<option value="为" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspwei</option>
			<option value="子" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspzi</option>
			<option value="中" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspzhong</option>
			<option value="你" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspni</option>
			<option value="说" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspshuo</option>
			<option value="生" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspsheng</option>
			<option value="国" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspguo</option>
			<option value="年" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspnian</option>
			<option value="就" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspjiu</option>
			<option value="那" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspna</option>
			<option value="要" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspyao</option>
			<option value="出" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspchu</option>
			<option value="也" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspye</option>
			<option value="后" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsphou</option>
			<option value="有" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspyou</option>
			<option value="自" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspzi</option>
			<option value="以 " name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspyi</option>
			<option value="家" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspjia</option>
			<option value="可" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspke</option>
			<option value="下" name="time">&nbsp&nbsp&nbsp&nbsp&nbspxia</option>
			<option value="而" name="time">&nbsp&nbsp&nbsp&nbsp&nbsper</option>
			<option value="过" name="time">&nbsp&nbsp&nbsp&nbsp&nbspguo</option>
			<option value="天" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsptian</option>
			<option value="去" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspqu</option>
			<option value="能" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspneng</option>
			<option value="对" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspdui</option>
			<option value="小" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspxiao</option>
			<option value="多" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspduo</option>
			<option value="然" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspran</option>
			<option value="于" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspyu</option>
			<option value="心" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspxin</option>
			<option value="学" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspxue</option>
			<option value="么" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspme</option>
			<option value="之"  name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspzhi</option>
			<option value="都" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspdou</option>
			<option value="好" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsphao</option>
			<option value="看" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspkan</option>
			<option value="起" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspqi</option>
			<option value="发" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspfa</option>
			<option value="当" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspdang</option>
			<option value="没" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspmei</option>
			<option value="成" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspcheng</option>
			<option value="只" name="time">&nbsp&nbsp&nbsp&nbsp&nbspzhi</option>
			<option value="如" name="time">&nbsp&nbsp&nbsp&nbsp&nbspru</option>
			<option value="事" name="time">&nbsp&nbsp&nbsp&nbsp&nbspshi</option>
			<option value="把" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspba</option>
			<option value="还"  name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsphai</option>
			<option value="用" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspyong</option>
			<option value="第" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspdi</option>
			<option value="样" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspyang</option>
			<option value="道" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspdao</option>
			<option value="作" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspzuo</option>
			<option value="种" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspzhong</option>
			<option value="开" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspkai</option>
			<option value="美" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspmei</option>
			<option value="总" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspzong</option>
			<option value="从" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspcong</option>
			<option value="无" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspqing</option>
			<option value="已" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspyi</option>
			<option value="面" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspmian</option>
			<option value="最" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspzui</option>
			<option value="女" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspnv</option>
			<option value="但" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspdan</option>
			<option value="现" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspxian</option>
			<option value="前" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspqian</option>
			<option value="些" name="time">&nbsp&nbsp&nbsp&nbsp&nbspxie</option>
			<option value="所" name="time">&nbsp&nbsp&nbsp&nbsp&nbspsuo</option>
			<option value="同" name="time">&nbsp&nbsp&nbsp&nbsp&nbsptong</option>
			<option value="把" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspba</option>
			<option value="手" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspshou</option>
			<option value="又" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspyou</option>
			<option value="行" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspxing</option>
			<option value="意" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspyi</option>
			<option value="动" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspdong</option>
			<option value="方" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspyfang</option>
			<option value="期" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspqi</option>
			<option value="意" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspyi</option>
			<option value="头" name="time">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsptou</option>
		</select>
		</div>
		<br> <br> <br> <br> 
		<input type="button"
			value="开始练习" onclick="save()"
			style="font-size: 35px; width: 320px; height: 80px; margin-left: 1200px; margin-top: 600px; background: #ff0000; color: #ffffff; border: none; border-radius: 12px" />
	</form>
</body>
<script>
		function save() {
			var hanziStr = document.getElementById("time").value;
			location.href = "${pageContext.request.contextPath }/jsp/chunyulianxijiemianxuanzehanzilianxi.jsp?hanzi=" + hanziStr;
		}
	</script>
</html>