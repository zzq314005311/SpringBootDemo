<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>热点信息</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css" href="./css/style.css">


</head>

<body>
	<!-- start header -->
	<header>
	<div class="top center">
		<div class="left fl">
			<ul>
				<li><a href="http://www.mi.com/" target="_blank">掌上律师</a></li>
				<li>|</li>
				<li><a href="">首页</a></li>
				<li>|</li>
				<li><a href="">法律咨询</a></li>
				<li>|</li>
				<li><a href="">找律师</a></li>
				<li>|</li>
				<li><a href="">法律知识</a></li>
				<li>|</li>
				<li><a href="">云服务</a></li>
				<li>|</li>
				<li><a href="">问题反馈</a></li>
				<li>|</li>
				<li><a href="">Select Region</a></li>
				<div class="clear"></div>
			</ul>
		</div>
		<div class="right fr">

			<div class="fr">
				<ul>
					<li><a href="./login.html" target="_blank">登录</a></li>
					<li>|</li>
					<li><a href="./register.html" target="_blank">注册</a></li>
					<li>|</li>
					<li><a href="">消息通知</a></li>
				</ul>
			</div>
			<div class="clear"></div>
		</div>
		<div class="clear"></div>
	</div>
	</header>
	<!--end header -->
	<!-- start banner_x -->
	<div class="banner_x center">
		<a href="./index.html" target="_blank"><div class="logo fl"></div></a>
		<a href=""><div class="ad_top fl"></div></a>
		<div class="nav fl">
			<ul>
				<li><a href="./liebiao.html" target="_blank">首页</a></li>
				<li><a href="">法律咨询</a></li>
				<li><a href="">找律师</a></li>
				<li><a href="">法律知识</a></li>
				<li><a href="">精品栏目</a></li>
			</ul>
		</div>
		<div class="search fr">
			<form action="" method="post">
				<div class="text fl">
					<input type="text" class="shuru" placeholder="免费法律咨询">
				</div>
				<div class="submit fl">
					<input type="submit" class="sousuo" value="搜索" />
				</div>
				<div class="clear"></div>
			</form>
			<div class="clear"></div>
		</div>
	</div>
	<!-- end banner_x -->
	<!-- self_info -->
	<div class="grzxbj">
		<div class="selfinfo center">
			<div class="lfnav fl">
				<div class="ddzx">热门精选</div>
				<div class="subddzx">
					<ul>
						<li><a href="" style="color:#ff6700;font-weight:bold;">官方通告</a></li>
						<li><a href="">查看最多</a></li>
						<li><a href="">回复最多</a></li>
						<li><a href="">点赞最多</a></li>
					</ul>
				</div>
				<div class="ddzx">个人中心</div>
				<div class="subddzx">
					<ul>
						<li><a href="">我要发帖</a></li>
						<li><a href="">@我的</a></li>
						<li><a href="">我的回复</a></li>
						<li><a href="">评价点赞</a></li>
					</ul>
				</div>
			</div>
			<div class="rtcont fr">
				<div class="ddzxbt">我要发帖</div>
				<form action="insert.do">
					<select name="" style="width: 200px;height: 30px">
						<option value="1">匿名</option>
						<option value="2">实名</option>
					</select> 
					<input placeholder="头条标题" style="width: 200px;height: 30px" name="title"></input> 
					<input placeholder="涉案金额" style="width: 200px;height: 30px" name="money"></input>
					<input placeholder="所属地区" style="width: 200px;height: 30px" name="address"></input>
					详细内容:<textarea style="width: 900px;height: 300px;resize: none" name="content">
					</textarea>
					<input type="submit" style="width: 100px;height: 30px;margin-left: 800px" value="发帖">
				</form>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	<!-- self_info -->

	<footer class="mt20 center">
	<div class="mt20">关于我们|联系方式|帮助中心|律师加盟|市场合作|法律声明|意见反馈|网址地图|支付方式|隐私政策|Select
		Region</div>
	<div>Copyright 2004-2018 66Law.cn 版权所有 蜀ICP备11014096号-1
		增值电信业务经营许可证(川B2-20110140)</div>
	<div>川公网安备 51019002000193号</div>
	</footer>
</body>
</html>
