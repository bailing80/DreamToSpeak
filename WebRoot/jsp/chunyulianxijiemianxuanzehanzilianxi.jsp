<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>听障儿童言语康复训练软件</title>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath }/css/main.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.10.2.js"></script>
<script>
//上一个
function lastValue(){
	
	
	var sms=['的 de','一 yi','是 shi','f','d','t','n','l','g','k','h','j','q','x','zh','ch','sh','r','z','c','s','y','w'];  
	var text = document.getElementById("text");
	var nextV;
      
	for(var i=0;i<sms.length;i++){
		if(text.value==sms[i]){
			if(i==sms.length-1){
				alert("没有啦");
				return;
			}else{
				nextV=sms[i+1];
				location.href = "${pageContext.request.contextPath}/jsp/chunyulianxijiemianxuanzehanzilianxi.jsp?hanzi=" + nextV;
				return;
			}
		}
	}
	
}
//下一个
function nextValue(){
	var sms=['shi','yi','de','c','z','r','sh','ch','zh','x','q','j','h','k','g','l','n','t','d','f','m','p','b'];
	var text1 = document.getElementById("text");
	var nextV;
	for(var i=0;i<sms.length;i++){
		if(text.value==sms[i]){
			if(i==sms.length-1){
				alert("没有啦");
				return;
			}else{
				nextV=sms[i+1];
				location.href = "${pageContext.request.contextPath}/jsp/chunyulianxijiemianxuanzehanzilianxi.jsp?hanzi=" + nextV;
				return;
			}
		}
	}
	
}
			function load() {
				var location = decodeURI(window.location.search);
				var str = JSON.stringify(location);
				var hanzi = str.split("=")[1].split('"')[0];
				var text2 = document.getElementById("text2");
				text.value = hanzi;
				/* var logoImg = document.getElementById("logoImg1");
				logoImg.src = "${pageContext.request.contextPath }/static/picture/hanzi/" + hanzi + ".png"; */
				var video = document.getElementById("video");
				video.innerHTML="<embed src='${pageContext.request.contextPath }/static/video/hanzi/"+hanzi+".mp4' style='width:430px;height:430px;position:absolute;top:20px;left:00px;'></embed>";
			}
		</script>
<style>
.a {
	margin-left: 3500px;
	margin-top: 70px;
}

#shibieDiv {
	margin-top: 0px;
	width: 60%;
	height: 300px; //
	background: yellow;
	margin-left: 20%;
}

#centerDiv {
	width: 70%;
	height: 300px; //
	background: red;
	margin-left: 0%;
}
#text {
	width: 230px;
	height: 230px; 
	margin-top: 250px;
	
}
</style>
</head>
<body
	background="${pageContext.request.contextPath }/static/image/fayinlianxichushijiemian.png"
	style="background-repeat: no-repeat; background-size: 100% 100%; background-attachment: fixed"
	onload="load()">
	<div
		style="background: #ffffff; width: 800px; height: 80px; position: absolute; left: 480px; top: 750px">
	</div>
	<div
		style="font-size: 35px; color: #000000; position: absolute; left: 650px; top: 765px"><--上一个&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;下一个--></div>
	<div id="centerDiv">
		<img alt="logo"
			src="${pageContext.request.contextPath }/static/image/chunyulianxijiemianshengmubiao.jpg"
			width="500px" height="400px" position=absolute
			style="margin-left: 150px; margin-top: 200px">
		<input type="text" id="text" name="content" value="" style="font-size: 90px; text-align: center" />
		&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
		<!-- <img id="logoImg1" alt="logo" src="" float="left" width="380px"
			height="430px"> -->
		<div style="position: absolute; top: 50px; left: 400px">
			<input type="button" id="text1" onclick="nextValue()" value="" style="background:url(${pageContext.request.contextPath }/static/image/111.jpg);width:79px;height:79px;position:absolute;left:160px;top:700px" />
			<input type="button" id="text1" onclick="lastValue()" value="" style="background:url(${pageContext.request.contextPath }/static/image/222.jpg);width:79px;height:79px;position:absolute;left:710px;top:700px" />
	        </div>
		</div>
	
	</div>
	<input type="button" value="返回选择界面"
		onclick="location.href='${pageContext.request.contextPath }/jsp/jingtaichunyuyunmubiao.jsp'"
		style="font-size: 35px; width: 270px; height: 70px; margin-left: 1530px; margin-top: 360px; background: #ffff00; color: #ff0000; border: none; border-radius: 12px" />
	<input type="button" value="返回初始界面"
		onclick="location.href='${pageContext.request.contextPath }/jsp/chunyuxuexichushijiemian.jsp'"
		style="font-size: 35px; width: 270px; height: 70px; margin-left: 1530px; margin-top: 50px; background: #ffff00; color: #ff0000; border: none; border-radius: 12px" />
	<div id="video"></div>
</body>
</html>