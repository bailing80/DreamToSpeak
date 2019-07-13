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
<body>
		<a id="addcollect" href="#">加入收藏夹</a>
<script type="text/javascript">	
$(document).ready(function() {
  $("#addcollect").click(function() {
    var ctrl = (navigator.userAgent.toLowerCase()).indexOf('mac') != -1 ? 'Command/Cmd': 'CTRL';
    if (document.all) {
      window.external.addFavorite('http://www.baidu.com', '前端笔记')
    } else if (window.sidebar) {
      window.sidebar.addPanel('前端笔记', 'http://www.baidu.com', "")
    } else {
      alert('您可以尝试通过快捷键' + ctrl + ' + D 加入到收藏夹~')
    }
  })
});
</script>	
</body>
</html>