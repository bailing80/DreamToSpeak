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
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/HZRecorder.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.10.2.js"></script>
<script>
			function nextValue(){
				var sms=['ong','ing','eng','ang','ün','un','in','en','an','üe','ie','iu','ou','ao','ui','ei','ai','ü','u','e','o','a'];
				var text = document.getElementById("text");
				var nextV;
				for(var i=0;i<sms.length;i++){
					if(text.value==sms[i]){
						if(i==sms.length-1){
							alert("没有啦");
							return;
						}else{
							nextV=sms[i+1];
							location.href = "fayinlianxijiemianyunmubiao.jsp?ym=" + nextV;
							return;
						}
					}
				}
				
			}
			function lastValue(){
				var sms=['a','o','e','u','ü','ai','ei','ui','ao','ou','iu','ie','üe','an','en','in','un','ün','ang','eng','ing','ong'];
				                       
				var text = document.getElementById("text");
				var nextV;
				for(var i=0;i<sms.length;i++){
					if(text.value==sms[i]){
						if(i==sms.length-1){
							alert("没有啦");
							return;
						}else{
							nextV=sms[i+1];
							location.href = "fayinlianxijiemianyunmubiao.jsp?ym=" + nextV;
							return;
						}
					}
				}
				
			}
			function load() {
				var location = decodeURI(window.location.search);
				var str = JSON.stringify(location);
				var ym = str.split("=")[1].split('"')[0];
				var text2 = document.getElementById("text2");
				text.value = ym;
				var logoImg = document.getElementById("logoImg");
				//logoImg.src = "./韵母唇语表/图片/" + ym + ".png";
				logoImg.src = "${pageContext.request.contextPath }/static/picture/yunmubiao/" + ym + ".png";
				var video = document.getElementById("video1");
				video.innerHTML="<embed src='${pageContext.request.contextPath }/static/video/yunmubiao/"+ym+".mp4' style='width:280px;height:280px;position:absolute;top:20px;left:250px;'></embed>";
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
	<input type="button" value="返回选择界面"
		onclick="location.href='${pageContext.request.contextPath }/jsp/fayinlianxichushijiemian.jsp'"
		style="font-size: 35px; width: 270px; height: 70px; margin-left: 1610px; margin-top: 100px; background: #ffff00; color: #ff0000; border: none; border-radius: 12px" />
	<input type="button" value="返回初始界面"
		onclick="location.href='${pageContext.request.contextPath }/jsp/welcome2.jsp'"
		style="font-size: 35px; width: 270px; height: 70px; margin-left: 1610px; margin-top: 50px; background: #ffff00; color: #ff0000; border: none; border-radius: 12px" />
	
	<audio controls autoplay style="width: 300px; height: 200px;position: absolute;left:520px;top:270px"/></audio>
	<div
			style="width: 230px; height: 320px; position: absolute; left: 515px; top: 500px">	
			<input onclick="startRecording()" type="button" value="录音" style="width: 100px; height: 100px;font-size:30px;position: absolute;margin-left:30px"/>
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
