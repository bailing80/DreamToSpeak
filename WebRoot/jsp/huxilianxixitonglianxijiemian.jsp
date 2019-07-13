<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>呼吸练习系统</title>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath }/css/main.css">
</head>
<script type="text/javascript">

		function load(){
			var location = decodeURI(window.location.search);
			var str = JSON.stringify(location);
			//var time= str.split("=")[1].split('"')[0];
			var time= str.split("=")[1].split("&")[0];
			//var frequency = str.split("&")[1].split("=")[1].split('"')[0];
			var timeSpan = document.getElementById("timeText");
			return time;
		}	
		function aload(){
			var location = decodeURI(window.location.search);
			var str = JSON.stringify(location);
			var frequency = str.split("&")[1].split("=")[1].split('"')[0];
			return frequency;
		}
		function lala(){
			var frequency = aload();
			if(frequency==2){
				change1();
			}else if(frequency==3){
				change3();
			}else if(frequency==4){
				change5();
			}else if(frequency==5){
				
				change7();
			}else if(frequency==6){
				change9();
			}
		}
		

	var t;
	function change1() {
		var a = document.getElementById("banner");
		a.src = "${pageContext.request.contextPath }/static/image/xiqi.png";
		window.setTimeout(change2, 4000);
	}

	function change2() {
		var a = document.getElementById("banner");
		a.src = "${pageContext.request.contextPath }/static/image/huqi.png";
		window.setTimeout(change1, 2000);
	}

	var t;
	
	function change3() {
		var a = document.getElementById("banner");
		a.src = "${pageContext.request.contextPath }/static/image/xiqi.png";
		window.setTimeout(change4, 6000);
	}

	function change4() {
		var a = document.getElementById("banner");
		a.src = "${pageContext.request.contextPath }/static/image/huqi.png";
		window.setTimeout(change3, 3000);
	}

	var t;

	function change5() {
		var a = document.getElementById("banner");
		a.src = "${pageContext.request.contextPath }/static/image/xiqi.png";
		window.setTimeout(change6, 8000);
	}

	function change6() {
		var a = document.getElementById("banner");
		a.src = "${pageContext.request.contextPath }/static/image/huqi.png";
		window.setTimeout(change5, 4000);
	}
	var t;

	function change7() {
		var a = document.getElementById("banner");
		a.src = "${pageContext.request.contextPath }/static/image/xiqi.png";
		window.setTimeout(change8, 10000);
	}

	function change8() {
		var a = document.getElementById("banner");
		a.src = "${pageContext.request.contextPath }/static/image/huqi.png";
		window.setTimeout(change7, 5000);
	}
	var t;

	function change9() {
		var a = document.getElementById("banner");
		a.src = "${pageContext.request.contextPath }/static/image/xiqi.png";
		window.setTimeout(change10, 12000);
	}

	function change10() {
		var a = document.getElementById("banner");
		a.src = "${pageContext.request.contextPath }/static/image/huqi.png";
		window.setTimeout(change9, 6000);
	}
	</script>
<body
	background="${pageContext.request.contextPath }/static/image/huxilianxixitonglianxijiemian.jpg"
	style="background-repeat: no-repeat; background-size: 100% 100%; background-attachment: fixed"
	onload="lala()">
	<br>
	<br>
	
	<center>
		<div id="timeshow1" style="color: #00ff00"></div>
	</center>
	<script type="text/javascript">
		var time = new Date();
		time.setHours(0);
		time.setMinutes(load());
		time.setSeconds(0);
		var timeout;
		var timeshow = document.getElementById("timeshow1");

		function countdown() {
		var hour = time.getHours();
		var min = time.getMinutes();
		var second = time.getSeconds();
		if(hour == "0" && min == "0" && second == "0") {
		alert("时间到啦");
		clearInterval(timeout);
		}
		time.setSeconds(second - 1);
		hour < 10 ? hour = "0" + hour : hour;
		min < 10 ? min = "0" + min : min;
		second < 10 ? second = "0" + second : second;
		timeshow1.innerHTML = hour + ":" + min + ":" + second;
		}
		timeout = setInterval(countdown, 1000);
	</script>
<br>
<br>
	<center>
		<img id="banner" src="img/banner1.jpg" />
	</center>
	<table>
		<tr>
			<td width="174px"></td>
			<td width="334px" colspan="2"><input type="button" value="返回界面"
				onclick="location.href='${pageContext.request.contextPath }/jsp/huxilianxixitongjiemian.jsp'"
				style="font-size: 35px; width: 320px; height: 80px; position: absolute; margin-left: 33%; top: 85%; background: #ff0000; color: #ffffff; border: none; border-radius: 12px" />
</body>
</html>