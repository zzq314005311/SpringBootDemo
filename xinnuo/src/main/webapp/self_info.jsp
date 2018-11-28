<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>self_info</title>
    
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
			<div class="ddzx">订单中心</div>
			<div class="subddzx">
				<ul>
					<li><a href="./dingdanzhongxin.html" >我的订单</a></li>
					<li><a href="">意外保</a></li>
					<li><a href="">团购订单</a></li>
					<li><a href="">评价晒单</a></li>
				</ul>
			</div>
			<div class="ddzx">个人中心</div>
			<div class="subddzx">
				<ul>
					<li><a href="./self_info.html" style="color:#ff6700;font-weight:bold;">我的个人中心</a></li>
					<li><a href="">消息通知</a></li>
					<li><a href="">优惠券</a></li>
					<li><a href="">收货地址</a></li>
				</ul>
			</div>
		</div>
		<div class="rtcont fr">
			<div class="grzlbt ml40">我的资料</div>
			<div class="subgrzl ml40"><span>昵称</span><span>啦啦维吉尔</span><span><a href="">编辑</a></span></div>
			<div class="subgrzl ml40"><span>手机号</span><span>15669097417</span><span><a href="">编辑</a></span></div>
			<div class="subgrzl ml40"><span>密码</span><span>************</span><span><a href="">编辑</a></span></div>
			<div class="subgrzl ml40"><span>个性签名</span><span>一支穿云箭，千军万马来相见！</span><span><a href="">编辑</a></span></div>
			<div class="subgrzl ml40"><span>我的爱好</span><span>游戏，音乐，旅游，健身</span><span><a href="">编辑</a></span></div>
			<div class="subgrzl ml40"><span>收货地址</span><span>浙江省杭州市江干区19号大街571号</span><span><a href="">编辑</a></span></div>
			
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
</html>
