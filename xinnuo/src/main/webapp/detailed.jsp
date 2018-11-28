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
	<!--end banner_x -->
	<div class="grzxbj">
		<div class="selfinfo center">
			<div class="lfnav fl">
				<div class="ddzx">订单中心</div>
				<div class="subddzx">
					<ul>
						<li><a href="" style="color:#ff6700;font-weight:bold;">我的订单</a></li>
						<li><a href="">意外保</a></li>
						<li><a href="">团购订单</a></li>
						<li><a href="">评价晒单</a></li>
					</ul>
				</div>
				<div class="ddzx">个人中心</div>
				<div class="subddzx">
					<ul>
						<li><a href="./self_info.html">我的个人中心</a></li>
						<li><a href="">消息通知</a></li>
						<li><a href="">优惠券</a></li>
						<li><a href="">收货地址</a></li>
					</ul>
				</div>
			</div>
			<div class="rtcont fr">
				<div class="ddzxbt">帖子详情</div>
				<div class="ddxq">
					<div class="ddspt fl">
						<img src="" alt="">
					</div>
					<div class="ddbh fl">${entid.title}</div>
					<div class="ztxx fr">
						<ul>
							<li>${entid.whether}</li>
							<li>${entid.money}</li>
							<li><fmt:formatDate value="${entid.time}"
									pattern="yyyy-MM-dd" /></li>
							<li>${entid.userid}</li>
							<div class="clear"></div>
						</ul>
					</div>
				</div>
				<div class="rtcont fr">
					<div class="ddzxbt">
						<a href="javascript:void()" onclick="tiao('${entid.id}')">我要回复</a>
					</div>
					<c:forEach items="${reid}" var="re">
						<div class="ddxq">
							<div class="ddspt fl">
								<img src="image/${re.head}" style="width: 80px;height: 80px">
							</div>
							<div class="ddbh fl">${re.content}</div>
							<div class="ztxx fr">
								<ul>
									<li>${re.name}</li>
									<li><fmt:formatDate value="${re.time}"
											pattern="yyyy-MM-dd" /></li>
									<div class="clear">
								</ul>
							</div>
						</div>
					</c:forEach>
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
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="static/h-ui/js/H-ui.min.js"></script>
<script>
 
  function tiao(id){
  	location="reply.do?id="+id;
  }
  </script>
</html>
