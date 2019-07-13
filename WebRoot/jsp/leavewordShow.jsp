<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
 <script type="text/javascript">
$(function (){
	$("#go").click(function (){
		var jumpPage = $("#jumpPage").val();
		//验证 
		location.href="${pageContext.request.contextPath}/leaveWord?method=browseIndexLeaveWord&nowPage="+jumpPage;
	});
});


function submitLeaveWord(){
	var user = new Object();
	user.title = $("#title").val();
	user.content = $("#content").val();
	$.ajax({
		url : "${pageContext.request.contextPath}/leaveWord?method=submitLeaveWord",
		type : "POST",
		datatype : "JSON",
		async: false,
		data :user,
		success : function(data) {
			 if("error"==data.trim()){
				alert("对不起，您目前尚未登录，请登录后再留言！");
				//清空信息 
				$("#title").val('');
				$("#content").val('');
			}else  if("success"==data.trim()){ 
				location.href="${pageContext.request.contextPath}/leaveWord?method=browseIndexLeaveWord";
			}
		},
		error : function() {
			alert("提交失败！");
		}
	});
}

</script> 
<style>
.blackTitle {
	font-family: "宋体", System;
	font-size: 12px;
	font-weight: bold;
	line-height: 20px;
	color: #000000;
	text-decoration: none;
}
.C_Input {
	background: url(../img/button2.gif) no-repeat;
	width: 73px;
	height: 23px;
	border: 0px;
	cursor: hand;
	color: #333;
}
.textBox {
	border-bottom: 1px;
	border-left: 1px;
	border-right: 1px;
	border-top: 1px;
	border-color: #666666;
	border-style: solid;
}
.text {
	font-family: "宋体", System;
	font-size: 12px;
	line-height: 20px;
	color: #000000;
	text-decoration: none;
}
</style>
</head>
<body>
	<div class="con">
		<div class="G_center">
			<div class="G_center01" style="border: 0px;">
				<img alt="" src="${pageContext.request.contextPath }/static/image/icon_liuyan.gif">
			</div>
			<c:forEach items="${requestScope.castPageModel.currentDataList}" var="leaveWord">
				<table width="90%" border="0" cellpadding="4" cellspacing="0" style="border:1px; border-color:black; border-style:solid;margin-left: 40px;margin-bottom: 5px;">
					  <tr bgcolor="#F7F3F7">
						<td class="text"><span class="blackTitle">留言标题：</span>：${leaveWord.title}</td>
						<td align="right" class="text">
							<span class="blackTitle">
							顾客姓名：</span>${leaveWord.memberName}：&nbsp;
							<span class="blackTitle">留言时间：</span>：${leaveWord.leaveDate}</td>
					  </tr>
					  <tr>
						<td class="text" colspan="2">${leaveWord.content}</td>
					  </tr>
					  <tr>
						<td colspan="2" bgcolor="#F7F3F7" class="blackTitle">管理员回复：</td>
					  </tr>
					  <tr>
						<td class="text" colspan="2">${leaveWord.answerContent}</td>
					  </tr>
				</table>
				
			 </c:forEach>
			 <table width="90%" cellpadding="4" cellspacing="0" style="margin-left: 40px;margin-bottom: 5px;">
			        <tr align="center">
			             <td>
					        <a href="${pageContext.request.contextPath}/leaveWord?method=browseIndexLeaveWord&nowPage=1">首页</a>  
					        <a href="${pageContext.request.contextPath}/leaveWord?method=browseIndexLeaveWord&nowPage=${requestScope.castPageModel.upPage}">上一页</a>   
					        <a href="${pageContext.request.contextPath}/leaveWord?method=browseIndexLeaveWord&nowPage=${requestScope.castPageModel.nextPage}">下一页  </a>   
					        <a href="${pageContext.request.contextPath}/leaveWord?method=browseIndexLeaveWord&nowPage=${requestScope.castPageModel.totalPage}">末页</a>   
					                    去第<input type="text" id="jumpPage" style="width: 20px;">页<input type="button" value="GO" id="go">            
					                    第${requestScope.castPageModel.nowPage}页/共${requestScope.castPageModel.totalPage}页　 总数${requestScope.castPageModel.totalNum}
					    </td>	
			        </tr>
			 </table>
				
			 <table width="94%" border="0" align="center" cellpadding="0" cellspacing="0">
                  <tr>
                    <td colspan="2"><img src="${pageContext.request.contextPath }/static/image/icon_LeaveWord.gif" width="140" height="45" /></td>
                  </tr>
                  <tr>
                    <td colspan="2">&nbsp;</td>
                  </tr>
                  <tr>
                    <td height="30" align="right" class="blackTitle">留言标题：</td>
                    <td height="30"><input type="text" id="title" name="wordTitle" class="textBox" size="61"/></td>
                  </tr>
                  <tr>
                    <td align="right" class="blackTitle">留言内容：</td>
                    <td><textarea id="content" name="content" rows="4" cols="60" class="textBox"></textarea></td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td height="35">
                        <input type="button" class="C_Input" onClick="submitLeaveWord()" value="提交留言"/>
                    </td>
                  </tr>
            </table>
		</div>
	</div>
</body>
</html>