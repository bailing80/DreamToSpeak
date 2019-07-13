<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% String jieshou=(String)request.getAttribute("key"); %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>听障儿童言语康复训练软件</title>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath }/css/main.css">
</head>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/HZRecorder.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.10.2.js"></script>
<script>
          
//初始化
Recorder.initialize({
swfSrc: "../recorder.swf"
});
// 开始录音
function record(callback){
Recorder.record({
start: function(){
callback && callback();
},
progress: function(milliseconds){
//document.getElementById("time").innerHTML = timecode(milliseconds);
}
});
}
// 上传模块
var recordArr = []; // 因为最后需要展示音频列表，需要一个全局数组用于存储upyun返回的音频url
function upload(callback){
// 定义音频文件名
var fileName = $.cookie("TOEFL_TOKEN") ? "login" + new Date().getTime() : "nologin" + new Date().getTime();
// 获取upyun配置参数，参考upyun的form_api：http://docs.upyun.com/api/form_api/
// 这里先上传音频文件名至服务器端，服务端根据文件名生成对应的policy和signature返回客户端
$.ajax({
type: "GET",
url: xm.baseURL + "/mkTpo/file/" + fileName + ".wav/posts.action",
dataType : "json",
success: function(data) {
// 获取upyun_api参数
var expiration = data.expiration, // 时间戳
saveKey = data["save-key"], // 保存路径
bucket = data.bucket, // 空间名
policy = data.poily, // policy
signature = data.signature; // signature
// 插件封装方法，注：该方法中的注释可能导致程序报错，需删除
Recorder.upload({
method: "POST",
url: "http://v0.api.upyun.com/universe1", // 录音上传url：upyun_api基本域名+空间名
audioParam: "file", // 上传upyun时，这个参数值固定为file，相当于表单提交中的<input type="file">
params: { // 这里填写获取的upyun_api参数，获取upyun的上传权限
"expiration": expiration,
"save-key": saveKey,
"bucket": bucket,
"policy": policy,
"signature": signature
},
success: function(responseText){ // 上传成功之后upyun会返回音频文件的相关信息
var data = JSON.parse(responseText);
recordArr.push(data.url); // 将录音音频的url追加到数组
callback && callback(); // 上传完成执行方法
}























































































































});
},
error: function(XMLHttpRequest, textStatus, errorThrown) {
console.log("XMLHttpRequest.status: " + XMLHttpRequest.status);
console.log("XMLHttpRequest.readyState: " + XMLHttpRequest.readyState);
console.log("textStatus: " + textStatus);
}
});
}</script>
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
</style>
</head>
<body
	background="${pageContext.request.contextPath }/static/image/fayinlianxijiemianshengmubiao1.jpg"
	style="background-repeat: no-repeat; background-size: 100% 100%; background-attachment: fixed"
	onload="load()">

	<div
		style="background: #ffffff; width: 500px; height: 50px; position: absolute; left: 650px; top: 800px">
	</div>
	

	<div id="centerDiv">
		<img alt="logo"
			src="${pageContext.request.contextPath }/static/image/fayinlianxijiemianshengmubiao3.jpg"
			style="margin-left: 500px; margin-top: 100px" float="left">
		&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
		<img id="logoImg" alt="logo" src="" float="left" width="240px"
			height="240px">
	</div>
          <!-- <img class="btn1" src="" alt="识别结果" id="text3" /> <br>
          <img class="btn1" src="" alt="相似度" id="text4" /> -->
	      <div id="video1"></div>
	<h3
		style="color: #ff0000; font-size: 30px; margin-left: 1080px; margin-top: 60px;">系统识别出来的结果</h3>
	<h3
		style="color: #ff0000; font-size: 30px; margin-left: 1150px; margin-top: 160px;">相似度</h3>
	<div style="position: absolute; top: 50px; left: 400px">
		<!-- <form action="./main" style="font-size: 50px; line-height: 50px;"> -->
			<input type="text" id="text" name="content" 
				style="font-size: 70px; text-align: center" /> 
				<input type="text" value="" id="text3" name="content"  style="width: 150px; height: 110px; font-size:30px;position: absolute; left: 725px; top: 400px" /> <br> 
				<input type="text" id="text4" name="content" size="100" value="" style="width: 150px; height: 110px; font-size:25px;position: absolute; left: 725px; top: 580px"/> 
			<input type="button" id="text1" onclick="nextValue()" value="" style="background:url(${pageContext.request.contextPath }/static/image/fayinlianxijiemianshengmubiao6.png);width:37px;height:28px;position:absolute;left:350px;top:760px" />
			<input type="button" id="text1" onclick="lastValue()" value="" style="background:url(${pageContext.request.contextPath }/static/image/fayinlianxijiemianshengmubiao9.png)" />
		<!-- </form> -->
		<br> 
		<%-- <input type="button" onclick="startRecording()" value=""
			onclick="location.href='fayinlianxijiemianshengmubiao.jsp'"
			style="background:url(${pageContext.request.contextPath }/static/image/fayinlianxijiemianshengmubiao7.png);width:230px;height:320px;position:absolute;left:150px;top:380px" /> --%>
		<input type="button" id="baocun"  value="保存这个字或音节"
			style="font-size: 35px; width: 300px; height: 50px; margin-left: 800px; margin-top: 690px; background: #0000ff; color: #ffffff; border: none; border-radius: 12px" onclick="baocun()" />
	</div>
	<input type="button" value="返回初始界面"
		onclick="location.href='${pageContext.request.contextPath }/jsp/welcome2.jsp'"
		style="font-size: 35px; width: 270px; height: 70px; margin-left: 1610px; margin-top: 145px; background: #ffff00; color: #ff0000; border: none; border-radius: 12px" />
	
	<audio controls autoplay style="width: 300px; height: 200px;position: absolute;left:520px;top:270px"/></audio>
	<div
			style="width: 230px; height: 320px; position: absolute; left: 515px; top: 500px">	
			<input onclick="record()" type="button" value="录音" style="width: 100px; height: 100px;font-size:30px;position: absolute;margin-left:30px"/>
			<input onclick="stopRecording()" type="button" value="停止" style="width: 100px; height: 100px;font-size:30px;position: absolute;margin-left:180px"/> 
			<input onclick="playRecording()" type="button" value="试听" style="width: 100px; height: 100px;font-size:30px;position: absolute;margin-left:30px;margin-top:130px;"/>
			<input onclick="uploadAudio()" type="button" value="识别" style="width: 100px; height: 100px;font-size:30px;position: absolute;margin-left:180px;margin-top:130px"/>
		</div>
		
		<%-- <img width="320" height="240" controls>
		    <source src="${pageContext.request.contextPath }/stream" type="img/png">
	    </img> --%>

	<script type="text/javascript" src="${pageContext.request.contextPath}/js/HZRecorder.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.10.2.js"></script> 
       <script>
    $(document).ready(function(){
    	  $(".btn1").hide();
    	});

        var recorder;
        var audio = document.querySelector('audio');
        function startRecording() {
            HZRecorder.get(function (rec) {
                recorder = rec;
                recorder.start();
            });
        }
        function stopRecording() {
            recorder.stop();
        }
        function playRecording() {
            recorder.play(audio);
        }
        function uploadAudio() {
            /* recorder.upload("${pageContext.request.contextPath }/pronunciation", function (state, e) {
                alert("uploadAudio"+state);
            	switch (state) {
                    case 'uploading':
                    	alert("进入了uploading");
                        //var percentComplete = Math.round(e.loaded * 100 / e.total) + '%';
                        break;
                    case 'ok':
                    	alert("进入了ok");
                        break;
                    case 'error':
                        alert("上传失败");
                        break;
                    case 'cancel':
                        alert("上传被取消");
                        break;
                }
            }); */
            uploadAudio1();
            uploadAudio2();
            /* $.ajax({
                //tyep:设置提交方式（get|post）
                    type:"post",
                //url:提交到那个servlet，这里写它的路径
                    url:"${pageContext.request.contextPath }/Contrast",
                    async :false,
            //data:定义数据,以键值对的方式放在大括号里
                   // data:{'yuan':$("#text").attr("src")},
            //statusCode:状态码，用于定义执行时提示的状态	 
                    statusCode:{
                    404:function(){
                        alert("404");
                    },
                    500:function(){
                        alert("500");
                    }
                    },
                    success:function(massge){
                    	var arr = massge.split('@');
                    	alert("arr[0]"+arr[0]);
                    	alert("arr[1]"+arr[1]);
                     $("#text3").attr('src',"${pageContext.request.contextPath}/jsp/"+arr[0]); 
                     $("#text4").attr('src',"${pageContext.request.contextPath}/jsp/"+arr[1]); 
                }
                })
                ; */
        }
        function uploadAudio1(){
        	recorder.upload("${pageContext.request.contextPath }/pronunciation", function (state, e) {
                alert("uploadAudio"+state);
            	switch (state) {
                    case 'uploading':
                        //var percentComplete = Math.round(e.loaded * 100 / e.total) + '%';
                        break;
                    case 'ok':
                    	alert("进入了ok");
                        break;
                    case 'error':
                        alert("上传失败");
                        break;
                    case 'cancel':
                        alert("上传被取消");
                        break;
                }
            }); 
        }
        function uploadAudio2(){
        	alert("进入了uploadAudio2")
        	$.ajax({
                //tyep:设置提交方式（get|post）
                    type:"post",
                //url:提交到那个servlet，这里写它的路径
                    url:"${pageContext.request.contextPath }/Contrast",
                    async :false,
            //data:定义数据,以键值对的方式放在大括号里
                   data:{'yuan':$("#text").val()},
            //statusCode:状态码，用于定义执行时提示的状态	 
                    statusCode:{
                    404:function(){
                        alert("404");
                    },
                    500:function(){
                        alert("500");
                    }
                    },
                    success:function(massge){
                    	var arr = massge.split('@');
                    	/* alert("识别结果："+arr[0]);	
                    	alert("相似度："+arr[1]); */
                    /*$("#text3").attr('src',"${pageContext.request.contextPath}/jsp/static/textPicture/"+arr[0]); 
                     $("#text4").attr('src',"${pageContext.request.contextPath}/jsp/static/textPicture/"+arr[1]);  */
                    	 $("#text3").attr('value',arr[0]); 
                         $("#text4").attr('value',arr[1]); 
                }
                })
                ;
        }  
    </script>
</body>
</html>