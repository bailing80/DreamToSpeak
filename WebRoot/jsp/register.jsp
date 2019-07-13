<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户注册</title>
</head>
<script type="text/javascript"
	src="<%=request.getContextPath() %>/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#saveMember").click(function(){
		var member = new Object();//json对象
		member.loginName = $("#loginName").val();//登陆账号
		member.loginPwd = $("#loginPwd").val();//
		member.method = "regedit";//传递要调用的servlet方法
		$.ajax({
			url : "/DreamToSpeak/mer",
			type : "POST",
			datatype : "JSON",
			async: false,
			data :member,
			success : function(data) {
				if("ok"==data.trim()){
					//添加成功
				    //$("#regeditInfoShow").text("注册成功");
					//$("#regeditInfoShow").html("<font color='red'>注册成功</font>");
					/* alert(data); */
					alert("已注册，点击返回登录界面");
					location.href="/DreamToSpeak/jsp/login.jsp";
					
				}else if("sorry"==data.trim()){
					//添加失败
					$("#regeditInfoShow").text("注册失败");
				}
			},
			error : function() {
				alert("提交失败！");
			}
		});
	});
    
});


</script>
<script type="text/javascript">
function isNull(field, id) {
	var value = field.value;
	if (value == null || value == "") {
		document.getElementById(id).innerHTML = "空值";
		document.getElementById(id).style.color = "red";
		return false;
	} else {
		document.getElementById(id).innerHTML = "";
		return true;
	}
}
function validate_form(thisform) {
	if (isNull(document.getElementById("Username"), 'errorUsername') == false
			| isNull(document.getElementById("Password"), 'errorPassword') == false) {
		return false;
	}
}
</script>
<script type="text/javascript">
function check()
{
if (document.form1.loginPwd.value==""){
alert("请输入登录密码!");
return false;
}
if (document.form1.repassword.value==""){
alert("请输入重复密码!");
return false;
}
if (document.form1.repassword.value!=document.form1.loginPwd.value){
alert("对不起!重复密码不等于登录密码");
return false;
}

return true; 

}
</script> 

<body
	background="${pageContext.request.contextPath }/static/image/register.png"
	style="background-repeat: no-repeat; background-size: 100% 100%; background-attachment: fixed">
	<div style="width: 100%; height: 100%">
		<br>		
		<div
			style="background: #ffffff; width: 600px; height: 700px; position: absolute; left: 200px; top: 150px">
			<br>
			<h3 style="color: #ff0000; font-size: 40px">
				<center>账号注册</center>
			</h3>
			<br>
				<br>
			<center>
				<img alt="用户名"
					src="${pageContext.request.contextPath }/static/image/username.jpg"
					style="vertical-align: bottom" />
					<input type="text" id="loginName"
					name="loginName" placeholder="用户名/邮箱/手机号" size="50px"
					style="height: 50px; vertical-align: bottom" onblur="isNull(this,'errorUsername')"/>
					<span id="errorUsername" style="font-size: 10px;"></span><br>	
			</center>
			<%-- <center>
				<br> <br> <img alt="验证码"
					src="${pageContext.request.contextPath }/static/image/username.jpg"
					style="vertical-align: bottom" />
					<input type="text"
					placeholder="请输入六位验证码" size="30px"
					style="height: 50px; vertical-align: bottom" />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					<input type="button" value="获取验证码"
					style="width: 100px; height: 40px; background: #ffffab; color: #ff0000; border: none" />
			</center> --%>
			<br> <br>	<br>
			<center>
				<img alt="密码"
					src="${pageContext.request.contextPath }/static/image/password.jpg"
					style="vertical-align: bottom" /><input type="password"
					id="loginPwd" name="loginPwd" placeholder="密码" size="50px"
					style="height: 50px; vertical-align: bottom" onblur="isNull(this,'errorPassword')" onchange="check()"/>
			    <span id="errorPassword" style="font-size: 1px;"></span>
			    <br>
			</center>
			<br> <br>	<br>
			<center>
				<img alt="密码"
					src="${pageContext.request.contextPath }/static/image/password.jpg"
					style="vertical-align: bottom" />
					<input type="password"
					name="repassword" placeholder="确认密码" size="50px"
					style="height: 50px; vertical-align: bottom" id="txtRepeatPass"  onblur="isNull(this,'errorrepassword')"  onchange="check()"/>
				<span id="errorrepassword" style="font-size: 1px;"></span>
			
			</center>

			<center>
				<br> <br> <br> <input
					style="width: 250px; height: 50px; background: #ff0000; color: #ffffff; border: none; border-radius: 12px"
					type="button" value="注册" id="saveMember">
			</center>
		</div>
	</div>
</body>
</html>