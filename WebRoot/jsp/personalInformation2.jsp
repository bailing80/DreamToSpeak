<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>听障儿童言语康复训练软件</title>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/css/main.css">
	<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#saveMember").click(function(){
		var member = new Object();//json对象
		member.memberName = $("#memberName").val();//会员姓名
		member.phone = $("#phone").val();//
		member.address = $("#address").val();//
		member.zip = $("#zip").val();//
		member.email = $("#email").val();//
		member.QQ = $("#QQ").val();//
		member.WeChat = $("#WeChat").val();//
		member.age = $("#age").val();//
		
		member.method = "update";//传递要调用的servlet方法
		$.ajax({
			url : "/DreamToSpeak/mer",
			type : "POST",
			datatype : "JSON",
			async: false,
			data :member,
			success : function(data) {
				if("ok"==data.trim()){
					alert("添加成功");
					//添加成功
					//$("#regeditInfoShow").text("注册成功");
				location.href="${pageContext.request.contextPath}/jsp/my.jsp";
					$("#updateInfoShow").html("<font color='red'>添加成功</font>");
				}else if("sorry"==data.trim()){
					//添加失败
					$("#updateInfoShow").text("添加失败");
				}
			},
			error : function() {
				alert("提交失败！");
			}
		});
	});
    
});
</script>

</head>
<body
	background="${pageContext.request.contextPath }/static/image/personalInformation1.jpg"
	style="background-repeat: no-repeat; background-size: 100% 100%; background-attachment: fixed"
	>
	<h3
		style="color: #0000ff; font-size: 50px; margin-left: 800px; margin-top: 50px;">个人信息</h3>
	<img style="vertical-align: bottom;" />
	<br>
	<tr bgcolor="#F7F3F7">
     <%--   <h3
		style="color: #000000; font-size: 30px;	position: absolute; left: 130px; top: 160px;">真实姓名:</h3><input type="hidden" value="${sessionScope.memberVO.id}" id="id">
          </td>
        <td height="26"><input type="text" name="memberName" id="memberName" size="50" class="textBox" value="${sessionScope.memberVO.memberName}" require="true" dataType="Require" msg="真实姓名不能为空!" style="font-size: 20px;width:400px;height: 50px; vertical-align: bottom; margin-left: 300px; top: 00px;"></td>
      </tr> --%>
      
      <br>
      <br>
      <tr bgcolor="#F7F3F7">
        <h3
		style="color: #000000; font-size: 30px; position: absolute; left: 130px; top: 240px;">年龄:</h3>
        <td height="26"><input type="age" name="age" id="age" size="50" class="textBox"  value="${sessionScope.memberVO.age}" require="true" dataType="age" msg="年龄不正确!" style="font-size: 20px;width:400px;height: 50px; vertical-align: bottom; margin-left: 300px; margin-top: 00px;"></td>
      </tr>
      <br>
      <br>
      <tr bgcolor="#F7F3F7">
        <h3
		style="color: #000000; font-size: 30px; position: absolute; left: 130px; top: 310px;">联系电话:</h3>
        <td height="26"><input type="text" name="phone" size="50" id="phone" class="textBox" value="${sessionScope.memberVO.phone}" require="true" dataType="Phone" msg="联系电话不正确!" style="font-size: 20px;width:400px;height: 50px; vertical-align: bottom; margin-left: 300px; margin-top: 00px;"></td>
      </tr>
    
      <br>
      <br>
      <tr bgcolor="#F7F3F7">
         <h3
		style="color: #000000; font-size: 30px; position: absolute; left: 130px; top: 380px;">地址:</h3>
        <td height="26"><input type="text" name="address" size="50" id="address" class="textBox" value="${sessionScope.memberVO.address}" require="true" dataType="Require" msg="联系地址不能为空!" style="font-size: 20px;width:400px;height: 50px; vertical-align: bottom; margin-left: 300px; margin-top: 00px;"></td>
      </tr>
     
      <br>
      <br>
      <tr bgcolor="#F7F3F7">
         <h3
		style="color: #000000; font-size: 30px; position: absolute; left: 130px; top: 460px;">邮编:</h3>
        <td height="26"><input type="text" name="zip"  id="zip" size="50" class="textBox" value="${sessionScope.memberVO.zip}" require="true" dataType="Zip" msg="邮政编码不正确!" style="font-size: 20px;width:400px;height: 50px; vertical-align: bottom; margin-left: 300px; margin-top: 00px;"></td>
      </tr>
        
      <br>
      <br>
      <tr bgcolor="#F7F3F7">
         <h3
		style="color: #000000; font-size: 30px; position: absolute; left: 130px; top: 540px;">电子邮箱:</h3>
        <td height="26"><input type="text" name="email" id="email" size="50" class="textBox" value="${sessionScope.memberVO.email}" require="false" dataType="Email" msg="电子邮箱不正确!" style="font-size: 20px;width:400px;height: 50px; vertical-align: bottom; margin-left: 300px; margin-top: 00px;"></td>
      </tr>
       
      <br>
      <br>
       <h3
		style="color: #000000; font-size: 30px; position: absolute; left: 130px; top: 620px;">微信:</h3>
        <td height="26"><input type="text" name="WeChat" id="WeChat" size="50" class="textBox" value="${sessionScope.memberVO.WeChat}" require="false" dataType="WeChat" msg="微信不正确!" style="font-size: 20px;width:400px;height: 50px; vertical-align: bottom; margin-left: 300px; margin-top: 00px;"></td>
      </tr>
      <br>
      <br>
	  <h3
		style="color: #000000; font-size: 30px;position: absolute; left: 130px; top: 690px;">QQ:</h3>
        <td height="26"><input type="text" name="QQ" id="QQ" size="50" class="textBox" value="${sessionScope.memberVO.QQ}" require="false" dataType="QQ" msg="QQ不正确!" style="font-size: 20px;width:400px;height: 50px; vertical-align: bottom; margin-left: 300px; margin-top: 00px;"></td>
      </tr>
  <tr>
         <td height="40" colspan="2" align="center" id="updateInfoShow">    
       </td>
      </tr>
      <br>
      <br>
	<input type="button" value="提交"
		<%-- onclick="location.href='${pageContext.request.contextPath }/jsp/my.jsp'" --%>
		style="font-size: 30px; width: 250px; height: 50px; margin-left: 370px; margin-top: 20px; background: #00ffff; color: #000000; border: none; border-radius: 12px"  id="saveMember"/>
</body>
</html>