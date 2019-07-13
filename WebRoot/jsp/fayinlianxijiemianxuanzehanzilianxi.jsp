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
          //上一个
/*           的一是了我不人在他有这个上们来到时大地为子中你说生国年着就那和要她出也得里后自以会家可下而过天去能对小多然于心学么之都好看起发当没成只如事把还用第样道想作种开美总从无情己面最女但现前些所同日手又行意动方期它头经长儿回位分爱老因很给名法间斯知世
 */			function lastValue(){
				var sms=['的 &nbsp;&nbsp; de','一&nbsp;&nbsp;yi','是&nbsp;&nbsp;shi','了&nbsp;&nbsp;le','我&nbsp;&nbsp;wo','不&nbsp;&nbsp;bu','人&nbsp;&nbsp;ren','在&nbsp;&nbsp;zai','g','k','h','j','q','x','zh','ch','sh','r','z','c','s','y','w'];  
				var text = document.getElementById("text");
				var nextV;
				for(var i=0;i<sms.length;i++){
					if(text.value==sms[i]){
						if(i==sms.length-1){
							//alert("没有啦");
							return;
						}else{
							nextV=sms[i+1];
							location.href = "${pageContext.request.contextPath}/jsp/fayinlianxijiemianshengmubiao.jsp?sm=" + nextV;
							return;
						}
					}
				}
				
			}
          //下一个
			function nextValue(){
				var sms=['w','y','s','c','z','r','sh','ch','zh','x','q','j','h','k','g','l','n','t','d','f','m','p','b'];
				var text = document.getElementById("text");
				alert("text+++++++++++++++++++="+text.value);
				var nextV;
				for(var i=0;i<sms.length;i++){
					if(text.value==sms[i]){
						if(i==sms.length-1){
							alert("没有啦");
							return;
						}else{
							nextV=sms[i+1];
							location.href = "${pageContext.request.contextPath}/jsp/fayinlianxijiemianshengmubiao.jsp?sm=" + nextV;
							return;
						}
					}
				}
				
			}
			function load() {
				var location = decodeURI(window.location.search);
				var str = JSON.stringify(location);
				var sm = str.split("=")[1].split('"')[0];
				var text2 = document.getElementById("text2");
				text.value = sm;
				var logoImg = document.getElementById("logoImg");
				logoImg.src = "${pageContext.request.contextPath }/static/picture/shengmubiao/" + sm + ".png";
				var video = document.getElementById("video1");
				video.innerHTML="<embed src='${pageContext.request.contextPath }/static/video/shengmubiao/"+sm+".mp4' style='width:280px;height:280px;position:absolute;top:20px;margin-left:00px;'></embed>";
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
            	switch (state) {
                    case 'uploading':
                        //var percentComplete = Math.round(e.loaded * 100 / e.total) + '%';
                        break;
                    case 'ok':
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