<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>基本设置</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="static/h-ui/css/H-ui.min.css" />
    <link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/H-ui.admin.css" />
    <link rel="stylesheet" type="text/css" href="lib/Hui-iconfont/1.0.8/iconfont.css" />
    <link rel="stylesheet" type="text/css" href="static/h-ui.admin/skin/default/skin.css" id="skin" />
    <link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/style.css" />

  </head>
  
  <body>
    <nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页
	<span class="c-gray en">&gt;</span>
	系统管理
	<span class="c-gray en">&gt;</span>
	基本设置
	<a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a>
</nav>
<div class="page-container">
	<div>
		<textarea class="textarea" style="width:98%; height:300px; resize:none">2c8|3p|4kkasi|64惨案|64惨剧|64学生运动|64运动|64运动民國|89惨案|89惨剧|89学生运动|89运动|adult|asiangirl|avxiu|av女|awoodong|A片|bbagoori|bbagury|bdsm|binya|bitch|bozy|bunsec|bunsek|byuntae|B样|fa轮|fuck|ＦｕｃΚ|gay|hrichina|jiangzemin|j女|kgirls|kmovie|lihongzhi|MAKELOVE|NND|nude|petish|playbog|playboy|playbozi|pleybog|pleyboy|q奸|realxx|s2x|sex|shit|sorasex|tmb|TMD|tm的|tongxinglian|triangleboy|UltraSurf|unixbox|ustibet|voa</textarea>
	</div>
	<div class="mt-20 text-c">
		<button name="system-base-save" id="system-base-save" class="btn btn-success radius" type="submit"><i class="icon-ok"></i> 确定</button>
	</div>
</div>
<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="static/h-ui/js/H-ui.min.js"></script> 
<script type="text/javascript" src="static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->
  </body>
</html>
