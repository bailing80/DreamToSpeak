<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>

<head>
<title>听障儿童言语康复训练软件</title>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/tzet/fayinlianxixitong.css">
<script>
			function load() {
				var location = decodeURI(window.location.search);
				var str = JSON.stringify(location);
				var zm = str.split("=")[1].split('"')[0];
				var text = document.getElementById("text");
				text.value = zm;
			}
		</script>
<script>
			function load() {
				var location = decodeURI(window.location.search);
				var str = JSON.stringify(location);
				var zm = str.split("=")[1].split('"')[0];
				var text1 = document.getElementById("text1");
				text.value = zm;
				var logoImg = document.getElementById("logoImg");
				logoImg.src = "./声母唇语表/声母图片/" + zm + ".png";
			}
		</script>

<script>
			function load() {
				var location = decodeURI(window.location.search);
				var str = JSON.stringify(location);
				var ym = str.split("=")[1].split('"')[0];
				var text = document.getElementById("text");
				text.value = ym;
			}
		</script>
<script>
			function load() {
				var location = decodeURI(window.location.search);
				var str = JSON.stringify(location);
				var ym = str.split("=")[1].split('"')[0];
				var text2 = document.getElementById("text2");
				text.value = ym;
				var logoImg = document.getElementById("logoImg");
				logoImg.src = "./韵母唇语表/图片/" + ym + ".png";
			}
		</script>

<style>
body {
	margin: 0;
	padding: 0;
	background-image: url(${pageContext.request.contextPath}/tzet/9.2.jpg);
	background-repeat: no-repeat;
	background-size: 100% 100%;
}

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

<body onload="load()">
		<div
			style="width: 230px; height: 320px; position: absolute; left: 150px; top: 380px">
			<audio controls autoplay></audio>
			<input onclick="startRecording()" type="button" value="录音" /> <input
				onclick="stopRecording()" type="button" value="停止" /> <input
				onclick="playRecording()" type="button" value="试听" /> <input
				onclick="uploadAudio()" type="button" value="识别" />
		</div>
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/js/HZRecorder.js"></script>
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/js/jquery-1.10.2.js"></script>
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
            recorder.upload("./pronunciation", function (state, e) {
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
            $.ajax({
                //tyep:设置提交方式（get|post）
                    type:"post",
                //url:提交到那个servlet，这里写它的路径
                    url:"./Contrast",
                    async :false,
            //data:定义数据,以键值对的方式放在大括号里
                    data:{yuan:$("#text").attr("src")},
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
                    	alert(arr[0]);
                    	alert(arr[1]);
                    	$("#text3").attr('src',"${pageContext.request.contextPath}/tzet/"+arr[0]); 
                    	$("#text4").attr('src',"${pageContext.request.contextPath}/tzet/"+arr[1]); 
                }
                });

        }
    </script>
		
</body>

</html>