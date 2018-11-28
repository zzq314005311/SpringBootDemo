<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>个人中心</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css"
	href="static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css"
	href="static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css"
	href="lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css"
	href="static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css"
	href="static/h-ui.admin/css/style.css" />

</head>

<body>
	<div
		style="width: 1000px;display: inline;position:relative; left:50px;top:100px">
		<div style="width: 300px;display: inline;" >
			<img src="/xinnuo/image/tubiao.png" width="500px" />
			<h2>${sessionScope.email}</h2>
			
		</div>
	</div>
	<div
		style="width: 600px; height: 330; display: inline;float: right;position:relative; bottom:230px;">

		<h2>
			<a href="houtai/reply.do?id=${sessionScope.id}"> <span
				style="width: 100%;height: 45px;display: block;line-height: 45px;text-align: center;">我回复过的帖子</span>
			</a>
		</h2>

		<h2>
			<a href="houtai/application.do?id=${sessionScope.id}"> <span
				style="width: 100%;height: 45px;display: block;line-height: 45px;text-align: center; ">一对一咨询记录</span>
			</a>
		</h2>
		<h2>
			<a href="houtai/field.do?id=${sessionScope.id}"> <span
				style="width: 100%;height: 45px;display: block;line-height: 45px;text-align: center; ">我的法律领域</span>
			</a>
		</h2>
	</div>
</body>
</html>
