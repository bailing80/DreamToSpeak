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
	font-size: 100px;
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
	style="background-repeat: no-repeat; background-size: 100% 100%; background-attachment: fixed">
	<div
		style="font-size: 50px; color: #ff0000; position: absolute; left: 850px; top: 70px">常用的100个汉字</div>
	<form action="zcsave.jsp" method="post">
		<br>
		<div
			style="font-size: 50px; color: #ff0000; position: absolute; height: 80px; margin-left: 1200px; margin-top: 250px;">请选择汉字：</div>
		<select id="time" name="sheng">
			<option value="的"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;的</option>
			<option value="一"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一</option>
			<option value="是"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;是</option>
			<option value="了"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;了</option>
			<option value="我"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我</option>
			<option value="不"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;不</option>
			<option value="人"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;人</option>
			<option value="在"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在</option>
			<option value="我是好学生"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;她</option>
			<option value="好好学习 天天向上"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;好好学习 天天向上</option>
			<option value="这"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;这</option>
			<option value="个"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;个</option>
			<option value="上"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;上</option>
			<option value="门"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;门</option>
			<option value="来"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lai</option>
			<option value="到"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dao</option>
			<option value="大"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;da</option>
			<option value="地"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;di</option>
			<option value="为"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;wei</option>
			<option value="子"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;zi</option>
			<option value="中"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;zhong</option>
			<option value="你"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ni</option>
			<option value="说"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;shuo</option>
			<option value="生"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sheng</option>
			<option value="国"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;guo</option>
			<option value="年"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;nian</option>
			<option value="就"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;jiu</option>
			<option value="那"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;na</option>
			<option value="要"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;yao</option>
			<option value="出"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;chu</option>
			<option value="也"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ye</option>
			<option value="后"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;hou</option>
			<option value="有"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;you</option>
			<option value="自"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;zi</option>
			<option value="以"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;yi</option>
			<option value="家"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;jia</option>
			<option value="可"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ke</option>
			<option value="下"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;xia</option>
			<option value="而"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;er</option>
			<option value="过"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;guo</option>
			<option value="天"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tian</option>
			<option value="去"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;qu</option>
			<option value="能"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;neng</option>
			<option value="对"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dui</option>
			<option value="小"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;xiao</option>
			<option value="多"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;duo</option>
			<option value="然"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ran</option>
			<option value="于"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;yu</option>
			<option value="心"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;xin</option>
			<option value="学"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;xue</option>
			<option value="么"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;me</option>
			<option value="之"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;zhi</option>
			<option value="都"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dou</option>
			<option value="好"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;hao</option>
			<option value="看"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;kan</option>
			<option value="起"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;qi</option>
			<option value="发"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;fa</option>
			<option value="当"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dang</option>
			<option value="没"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;mei</option>
			<option value="成"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cheng</option>
			<option value="只"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;zhi</option>
			<option value="如"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ru</option>
			<option value="事"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;shi</option>
			<option value="把"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ba</option>
			<option value="还"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;hai</option>
			<option value="用"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;yong</option>
			<option value="第"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;di</option>
			<option value="样"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;yang</option>
			<option value="道"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dao</option>
			<option value="作"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;zuo</option>
			<option value="种"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;zhong</option>
			<option value="开"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;kai</option>
			<option value="美"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;mei</option>
			<option value="总"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;zong</option>
			<option value="从"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cong</option>
			<option value="无"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;qing</option>
			<option value="已"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;yi</option>
			<option value="面"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;mian</option>
			<option value="最"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;zui</option>
			<option value="女"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;nv</option>
			<option value="但"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dan</option>
			<option value="现"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;xian</option>
			<option value="前"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;qian</option>
			<option value="些"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;xie</option>
			<option value="所"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;suo</option>
			<option value="同"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tong</option>
			<option value="把"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ba</option>
			<option value="手"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;shou</option>
			<option value="又"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;you</option>
			<option value="行"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;xing</option>
			<option value="意"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;yi</option>
			<option value="动"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dong</option>
			<option value="方"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;yfang</option>
			<option value="期"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;qi</option>
			<option value="意"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;yi</option>
			<option value="头"name="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tou</option>
		</select>
		</div>
		<br> <br> <br> <br> <input type="button"
			value="开始练习" onclick="save()"
			style="font-size: 35px; width: 320px; height: 80px; margin-left: 1200px; margin-top: 600px; background: #ff0000; color: #ffffff; border: none; border-radius: 12px" />
	</form>
</body>
<script>
		function save() {
			var hanziStr = document.getElementById("time").value;
			location.href = "${pageContext.request.contextPath }/jsp/fayinlianxijiemianxuanzehanzilianxi.jsp?hanzi=" + hanziStr;
		}
	</script>
</html>