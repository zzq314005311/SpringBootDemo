<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>分类编辑</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link type="text/css" rel="stylesheet" href="css/H-ui.css"/>
    <link type="text/css" rel="stylesheet" href="css/H-ui.admin.css"/>
    <link type="text/css" rel="stylesheet" href="font/font-awesome.min.css"/>

  </head>
  
  <body>
   <div class="pd-20">
  <form class="Huiform" action="/" method="post">
    上级栏目：
    <select class="select" id="sel_Sub" name="sel_Sub" onchange="SetSubID(this);">
      <option value="0">顶级分类</option>
      <option value="100">分类一级</option>
      <option value="101">&nbsp;&nbsp;├ 分类二级</option>
      <option value="102">&nbsp;&nbsp;├ 分类二级</option>
      <option value="201">分类一级</option>
      <option value="101">&nbsp;&nbsp;├ 分类二级</option>
    </select>
    <input type="hidden" id="hid_ccid" value="">排序：<input class="input-text text-c" style="width:50px" type="text" value="3" placeholder="排序" name="class-rank" id="class-rank">
    分类名：<input class="input-text" style="width:170px" type="text" value="二级分类" placeholder="输入分类" name="class-val" id="class-val">
    <div class="text-c mt-20"><button type="button" class="btn btn-success" id="" name="" onClick="class_save(this,'2');"><i class="icon-save"></i> 保存</button></div>
  </form>
</div>
<script type="text/javascript" src="http://cdn.bootcss.com/jquery/2.1.3/jquery.min.js"></script>
<script type="text/javascript" src="js/H-ui.js"></script> 
<script type="text/javascript" src="js/H-ui.admin.js"></script>
<script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "//hm.baidu.com/hm.js?080836300300be57b7f34f4b3e97d911";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();
var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F080836300300be57b7f34f4b3e97d911' type='text/javascript'%3E%3C/script%3E"));
</script>
  </body>
</html>
