<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>信诺律师网</title>
    
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
						<li><a href="getLawtypeList.do">掌上律师</a></li>
						<li>|</li>
						<li><a href="getLawtypeList.do">首页</a></li>
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
					<div class="gouwuche fr"><a href="">发帖</a></div>
					<div class="fr">
						<ul>
							<li><a href="./login.jsp">登录</a></li>
							<li>|</li>
							<li><a href="./register.jsp">注册</a></li>
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
			<a href="getLawtypeList.do"><div class="logo fl"></div></a>
			<a href=""><div class="ad_top fl"></div></a>
			<div class="nav fl">
				<ul>
					<li><a href="getLawtypeList.do">首页</a></li>
					<li><a href="">法律咨询</a></li>
					<li><a href="">找律师</a></li>
					<li><a href="">法律知识</a></li>
					<li><a href="">精品栏目</a></li>
				</ul>
			</div>
			<div class="search fr">
				<form action="" method="post">
					<div class="text fl">
						<input type="text" class="shuru"  placeholder="免费法律咨询">
					</div>
					<div class="submit fl">
						<input type="submit" class="sousuo" value="搜索"/>
					</div>
					<div class="clear"></div>
				</form>
				<div class="clear"></div>
			</div>
		</div>
<!-- end banner_x -->

	<!-- start banner_y -->
	<!-- end banner -->

	<!-- start danpin -->
		<div class="danpin center">
			<div class="biaoti center">优选律师</div>
			<div class="main center">
			<c:if test="${empty getLawyerId}"><h3 style="color: red">未找到相关律师</h3></c:if>
			<c:forEach items="${getLawyerId}" var="Lawyer">
			<c:if test="${!empty Lawyer}">
				<div class="mingxing fl mb20" style="border:2px solid #fff;width:230px;cursor:pointer;" onmouseout="this.style.border='2px solid #fff'" onmousemove="this.style.border='2px solid red'">
					<div class="sub_mingxing"><a href="" target="_blank"><img src="image/${Lawyer.head}" alt=""></a></div>
					<div class="pinpai"><a href="" target="_blank">${Lawyer.name}</a></div>
					<div class="youhui">${Lawyer.describe}</div>
					<div class="jiage">${Lawyer.phonenum}</div>
				</div>
			</c:if>
			</c:forEach>	
			</div>
				<div class="clear"></div>
			</div>
		

		<footer class="mt20 center">			
			<div class="mt20">关于我们|联系方式|帮助中心|律师加盟|市场合作|法律声明|意见反馈|网址地图|支付方式|隐私政策|Select Region</div>
			<div>Copyright 2004-2018 66Law.cn 版权所有 蜀ICP备11014096号-1 增值电信业务经营许可证(川B2-20110140)</div> 
			<div>川公网安备 51019002000193号</div>
		</footer>

	<!-- end danpin -->

  </body>
</html>
