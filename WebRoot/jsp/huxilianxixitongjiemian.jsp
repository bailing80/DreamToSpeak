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
	background="${pageContext.request.contextPath }/static/image/huxilianxixitongjiemian.png"
	style="background-repeat: no-repeat; background-size: 100% 100%; background-attachment: fixed">

	<div
		style="font-size: 50px; color: #ffff00; position: absolute; left: 45%; top: 10%">呼吸训练</div>
	<form action="zcsave.jsp" method="post">

		<br>
		<div
			style="font-size: 50px; color: #ffffff; position: absolute; left: 56%; top: 26%">选择时长：</div>
		<select id="time2">
			<option value="5分钟" >5分钟</option>
			<option value="10分钟" >10分钟</option>
			<option value="15分钟" >15分钟</option>
			<option value="20分钟" >20分钟</option>
			<option value="25分钟" >25分钟</option>
			<option value="30分钟" >30分钟</option>
		</select>
		<script>
		     function save1() {
		    	
			 var time = document.getElementById("time2").value;
			 var time1=time.split("分钟")[0];
/* 			 location.href = "huxilianxixitonglianxijiemian.jsp?time="+time1+"&frequency="+frequency; */
		    	 
			 var pinlv = document.getElementById("air").value;
			 frequency=pinlv.split("（")[0];
			 location.href = "huxilianxixitonglianxijiemian.jsp?time="+time1+"&frequency="+frequency;
/* 			 location.href = "huxilianxixitonglianxijiemian.jsp?frequency=" + frequency; */
		      }
	   </script>
		</div>
		<br>
		<div
			style="font-size: 50px; color: #ffffff; position: absolute; left: 56%; top: 45%">呼吸频率：</div>
		<select id="air">
			<option value="2（吸气：2s  呼气：4s ）"  id="banner">2（吸气：2s 呼气：4s ）</option>
			<option value="3（吸气：3s  呼气：6s ）"  id="banner1">3（吸气：3s 呼气：6s ）</option>
			<option value="4（吸气：4s  呼气：8s ）"  id="banner2">4（吸气：4s 呼气：8s ）</option>
			<option value="5（吸气：5s  呼气：10s ）" id="banner3">5（吸气：5s 呼气：10s ）</option>
			<option value="6（吸气：6s  呼气：12s ）" id="banner4">6（吸气：6s 呼气：12s ）</option>
		</select> <br> <br> <br> <br> <input type="button"
			value="开始练习" onclick="save1()"
			style="font-size: 35px; width: 320px; position: absolute; height: 80px; left: 54%; top: 70%; background: #ff0000; color: #ffffff; border: none; border-radius: 12px" />
			<input type="button"
			value="返回主界面" onclick="location.href='http://localhost:8080/FH-WEB/webproduct.html'"
			style="font-size: 35px; width: 320px; position: absolute; height: 80px; left: 54%; top: 85%; background: #ff0000; color: #ffffff; border: none; border-radius: 12px" />
	</form>
</body>
</html>