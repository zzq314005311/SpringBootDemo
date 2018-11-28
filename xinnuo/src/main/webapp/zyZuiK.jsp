<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
.jj{
   background-color:#F2F2F2
}
.ggg{
width: 100%
 background-color:#F2F2F2
}

.tutu{
float: left; width: 40%
}

.anlii{
float: right; width: 60%
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
					<div class="gouwuche fr"><a href="">发帖</a></div>
					<div class="fr">
						<ul>
							<li><a href="./login.html" target="_blank">登录</a></li>
							<li>|</li>
							<li><a href="./register.html" target="_blank" >注册</a></li>
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
<!-- self_info -->

	<div class="grzxbj">
		<div class="selfinfo center">
		<div class="lfnav fl">
			
			<div class="subddzx">
				<ul>
					<li><a href="" style="color:#ff6700;font-weight:bold;">地区查找刑事辩护律师</a></li>
					<li><a href="">北京</a>&nbsp&nbsp&nbsp&nbsp<a href="">天津</a>&nbsp&nbsp&nbsp&nbsp<a href="">上海</a>&nbsp&nbsp&nbsp&nbsp<a href="">重庆</a></li>
					<li><a href="">河北</a>&nbsp&nbsp&nbsp&nbsp<a href="">山西</a>&nbsp&nbsp&nbsp&nbsp<a href="">吉林</a>&nbsp&nbsp&nbsp&nbsp<a href="">江苏</a></li>
					<li><a href="">福建</a>&nbsp&nbsp&nbsp&nbsp<a href="">江西</a>&nbsp&nbsp&nbsp&nbsp<a href="">山东</a>&nbsp&nbsp&nbsp&nbsp<a href="">湖北</a></li>
					<li><a href="">湖南</a>&nbsp&nbsp&nbsp&nbsp<a href="">海南</a>&nbsp&nbsp&nbsp&nbsp<a href="">四川</a>&nbsp&nbsp&nbsp&nbsp<a href="">贵州</a></li>
					<li><a href="">陕西</a>&nbsp&nbsp&nbsp&nbsp<a href="">甘肃</a>&nbsp&nbsp&nbsp&nbsp<a href="">辽宁</a>&nbsp&nbsp&nbsp&nbsp<a href="">浙江</a></li>
					<li><a href="">安徽</a>&nbsp&nbsp&nbsp&nbsp<a href="">河南</a>&nbsp&nbsp&nbsp&nbsp<a href="">广东</a>&nbsp&nbsp&nbsp&nbsp<a href="">广西</a></li>
					<li><a href="">云南</a>&nbsp&nbsp&nbsp&nbsp<a href="">西藏</a>&nbsp&nbsp&nbsp&nbsp<a href="">青海</a>&nbsp&nbsp&nbsp&nbsp<a href="">宁夏</a></li>
					<li><a href="">新疆</a>&nbsp&nbsp&nbsp&nbsp<a href="">台湾</a>&nbsp&nbsp&nbsp&nbsp<a href="">香港</a>&nbsp&nbsp&nbsp&nbsp<a href="">澳门</a></li>
					<li><a href="">黑龙江</a>&nbsp&nbsp&nbsp&nbsp<a href="">内蒙古</a></li>
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
			<div class="ddzxbt">常用罪名类型<img alt="" src="image/huoh.jpg" height="20px" width="20px"></div>
			<div class="jj" align="center">
				<ul>
					<c:forEach items="${charge}" var="list">
						<li style=" float:left "><a href="asa.do?id=${list.id}">${list.name}</a>&nbsp&nbsp&nbsp</li>
					</c:forEach>
					
				</ul>  
				<div class="clear"></div>
			</div>
			<div class="rtcont fr">
				<div class="ddzxbt">刑事辩护相关知识</div>
				<div class="ggg">
				<div class="tutu">
				<img alt="" src="image/timg.jpg" height="300px" width="400px">
				</div>
				<div class="anlii">
				<br/>
				<h2 align="center">最高人民法院关于常见犯罪的量刑指导意见</h2>
				<br/>
				<br/>
				<h4>刑事案件的定罪量刑是相当重要，量刑是否公正公平都是机器重要的，随着时间推移，各类犯罪的量刑...</h4>
				<br/>
				<ul>
				<c:forEach items="${anli}" var="list" >
				
                     <li><a href="aea.do?id=${list.id}">${list.lname}</a></li><br/>
	
					</c:forEach>
					
				</ul> 
				</div>
				</div>
				</div>
				
			</div>
		
		<div class="clear"></div>
		</div>
	</div>
<!-- self_info -->
		
		<footer class="mt20 center">			
			<div class="mt20">关于我们|联系方式|帮助中心|律师加盟|市场合作|法律声明|意见反馈|网址地图|支付方式|隐私政策|Select Region</div>
			<div>Copyright 2004-2018 66Law.cn 版权所有 蜀ICP备11014096号-1 增值电信业务经营许可证(川B2-20110140)</div> 
			<div>川公网安备 51019002000193号</div>
		</footer>
  </body>
  <script type="text/javascript">
  
  </script>
</html>

