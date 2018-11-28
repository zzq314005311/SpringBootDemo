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
<link rel="stylesheet" type="text/css" href="./css/css.css">
<link rel="stylesheet" type="text/css" href="css/indexs.css">

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
	
	<div class="luntan" style="width: 800px;margin: 0px auto">
		<div class="nclear"></div>
		<div class="nnavl">
			<div class="nnavla">
				&nbsp;&nbsp;<a href="">默认排序</a>&nbsp;|&nbsp;<a href="">发贴时间</a>&nbsp;|&nbsp;<a
					href="">精品主题</a>&nbsp;|&nbsp;<a href="">作者/时间</a>&nbsp;|&nbsp;<a
					href="post.jsp">我要发帖</a>
			</div>
			<table width="750" border="0" cellspacing="0" cellpadding="5">
				<tbody>
					<c:forEach items="${entrusts}" var="ent">
						<tr> <input name="id" type="hidden" value="${ent.id}" />
							<td width="515" height="40" valign="middle" class="ntext14"><a
								href="" target="_blank">${ent.title}</a> &nbsp;&nbsp;28/2362</td>
							<td valign="middle" class="ntext12">
								<div style="float:left">
									<a href="" target="_blank" style="color:#999999">${ent.userid}</a><br>
									<span style="color:#999999">183.249.236.*</span>
								</div>
								<div
									style="float:right; color:#999999; position:relative; top:10px;">
									<fmt:formatDate value="${ent.time}" pattern="yyyy-MM-dd" />
								</div>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

			<table width="750" border="0" cellspacing="0" cellpadding="5">
				<tbody>
					<c:forEach items="${entrusts}" var="ent">
						<tr>
							<td width="515" height="40" valign="middle" class="ntext14"><a
								href="" target="_blank">${ent.title}</a> &nbsp;&nbsp;28/2362</td>
							<td valign="middle" class="ntext12">
								<div style="float:left">
									<a href="" target="_blank" style="color:#999999">${ent.userid}</a><br>
									<span style="color:#999999">183.249.236.*</span>
								</div>
								<div
									style="float:right; color:#999999; position:relative; top:10px;">
									<fmt:formatDate value="${ent.time}" pattern="yyyy-MM-dd" />
								</div>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<table width="750" border="0" cellspacing="0" cellpadding="5">
				<tbody>
					<c:forEach items="${entrusts}" var="ent">
						<tr>
							<td width="515" height="40" valign="middle" class="ntext14"><a
								href="" target="_blank">${ent.title}</a> &nbsp;&nbsp;28/2362</td>
							<td valign="middle" class="ntext12">
								<div style="float:left">
									<a href="" target="_blank" style="color:#999999">${ent.userid}</a><br>
									<span style="color:#999999">183.249.236.*</span>
								</div>
								<div
									style="float:right; color:#999999; position:relative; top:10px;">
									<fmt:formatDate value="${ent.time}" pattern="yyyy-MM-dd" />
								</div>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>

		<div class="nlinel"></div>
		<div style="text-align:right; padding-bottom:5px;">
			本吧共有贴子40篇&nbsp;分2页显示&nbsp;<a href="list-2025-0.html">1</a> <a
				href="list-2025-1.html">[2]</a> <a href="list-2025-1.html">[下一页]</a>
			<a href="list-2025-1.html">[尾页]</a>
		</div>
		<div class="nlinel"></div>
		<!-- self_info -->

		<footer class="mt20 center">
		<div class="mt20">关于我们|联系方式|帮助中心|律师加盟|市场合作|法律声明|意见反馈|网址地图|支付方式|隐私政策|Select
			Region</div>
		<div>Copyright 2004-2018 66Law.cn 版权所有 蜀ICP备11014096号-1
			增值电信业务经营许可证(川B2-20110140)</div>
		<div>川公网安备 51019002000193号</div>
		</footer>
</body>
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="static/h-ui/js/H-ui.min.js"></script>
<script>
	$("table tr:even").css("background-color", "#EEEED1");
	$("table tr").hover(function() {
		$(this).css("background-color", "#CDB38B")
	}, function() {
		$("table tr:even").css("background-color", "#EEEED1");
		$("table tr:odd").css("background-color", "white");
	})
	$("table tr").click(function() {
		var id = $(this).find("input").val()
		location = "detailed.do?id=" + id;
	})
</script>
<script>
  
  </script>
</html>
