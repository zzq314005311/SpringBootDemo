<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>罪名库</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css" href="./css/style.css">

<style type="text/css">
.titi li {
	float: left
}
/* .tutu{
float: left; width: 40%
}*/
.you {
	
}
</style>
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
			<div class="gouwuche fr">
				<a href="">发帖</a>
			</div>
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
	<div class="titi">
		<div style="">
			<ul style="text-indent: 2em;">
			<li>刑法首页</li>
				<li>犯罪</li>
				<li>刑罚种类</li>
				<li>刑罚运用</li>
				<li>刑法罪名</li>
				<li>刑法案例</li>
				<li>法律专题</li>
				<li>法律聚焦</li>
				<li>法律咨询</li>
				<li>刑法律师</li>			
			</ul>
		</div>
		<img alt="" src="image/zyvvv.jpg" width="1350px" height="50px">
	</div>
		<div class="da">
			<div class="tutu"
				style="width: 900px;height:550px;position: relative;top: 50px;text-indent: 3em	">
				<div>
					<h2 style="text-indent: 3em; color:6c6c6c">${list.lname}</h2>
				</div>				
				<div style="background-color:F2F2F2;">
					<div>
						${list.lgaishu}<br /> 
						<img alt="" src="image/${list.ltup}" style="position:relative;left:200px">
					</div>
						</div>
					<div style="text-indent: 3em"><h2 style="text-indent: 3em; color:6c6c6c">专业回答</h2></div>
					<br/>
					<div style="background-color:F2F2F2;">
					<div>
						${list.lhuida}<br/> <br />
					</div>
					</div>
					<div style="text-indent: 3em"><h2 style="text-indent: 3em; color:6c6c6c">法律规定</h2></div>
					<div style="background-color:F2F2F2;">
					<div>
						${list.lfaLvGuiDing} 	
					</div>	
				</div>
	<div class="you"
				style="width: 300px;height:300px;position: relative;top:-450px;margin-left:920px;line-height:40px">
				<img alt="" src="image/zyrfv.jpg" height="250px" width="300px">
				<div>
				<ul>
				<li><h4>刑法指南</h4></li>
<li><a href="">发现犯罪行为后该怎么办</a></li>
<li><a href="">被拘传或者传唤了怎么办</a></li>
<li><a href="">未成年刑事案件诉讼流程</a></li>
<li><a href="">如何申请减刑、假释</a></li>
<li><a href="">请律师打官司作用和重要性 </a></li>
				</ul>
				</div>
</div>
			</div>
			</div>	
	<!-- self_info -->
	
			<footer class="mt20 center">
			<div class="mt20">关于我们|联系方式|帮助中心|律师加盟|市场合作|法律声明|意见反馈|网址地图|支付方式|隐私政策|SelectRegion</div>
			<div>Copyright 2004-2018 66Law.cn 版权所有 蜀ICP备11014096号-1
				增值电信业务经营许可证(川B2-20110140)</div>
			<div>川公网安备 51019002000193号</div>
			</footer>
</body>
</html>
