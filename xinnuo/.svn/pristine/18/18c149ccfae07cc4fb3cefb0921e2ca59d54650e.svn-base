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

<title>法律领域列表</title>

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
	<nav class="breadcrumb"> <i class="Hui-iconfont">&#xe67f;</i> 首页
	<span class="c-gray en">&gt;</span> 个人信息 <span class="c-gray en">&gt;
	</span> 修改个人信息 <a class="btn btn-success radius r"
		style="line-height:1.6em;margin-top:3px"
		href="javascript:location.replace(location.href);" title="刷新"> <i
		class="Hui-iconfont">&#xe68f;</i></a></nav>
	<div class="page-container">
		
	<form action=shanchu.do method="post">
		<table
			class="table table-border table-bordered table-bg table-hover table-sort">
			<thead>
				<tr class="text-c">
					<th width="80">id</th>
					<th width="">邮箱</th>
					<th width="">联系方式</th>
					<th width="">地址</th>
					<th width="">服务时间</th>
					<th width="">服务地区</th>
					<th>操作</th>

				</tr>
				<tr>
					<th width="80">${sessionScope.id}<input type="hidden"
						name="id"></th>
					<th><input type="text" name="email"
						value="${sessionScope.email}"></th>
					<th><input type="text" name="phonenum"
						value="${sessionScope.phonenum}"></th>
					<th><input type="text" name="address"
						value="${sessionScope.address}"></th>
					<th><input type="text" name="time"
						value="${sessionScope.time}"></th>

					<th><input type="text" name="service_Address"
						value="${sessionScope.service_Address}"></th>
					<%-- <td class="td-manage"><a style="text-decoration:none"
						class="ml-5" href="houtai/update1.do?id=${sessionScope.id}" title="修改">
							<i class="Hui-iconfont">&#xe6df;</i>
					</a></td> --%>
					<td><input type="submit" value="修改"></td>
				</tr>
			</thead>
			<tbody>

			</tbody>
		</table>
			</form>


	</div>

	<!--_footer 作为公共模版分离出去-->
	<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script>
	<script type="text/javascript" src="lib/layer/2.4/layer.js"></script>
	<script type="text/javascript" src="static/h-ui/js/H-ui.min.js"></script>
	<script type="text/javascript" src="static/h-ui.admin/js/H-ui.admin.js"></script>
	<!--/_footer 作为公共模版分离出去-->

	<!--请在下方写此页面业务相关的脚本-->
	<script type="text/javascript"
		src="lib/My97DatePicker/4.8/WdatePicker.js"></script>
	<script type="text/javascript"
		src="lib/datatables/1.10.0/jquery.dataTables.min.js"></script>
	<script>
	
		function select() {
			var typeName = $("#typeName").val();
			location = "wwlist.do?typeName=" + typeName + "&pageNow=1";
		}
	
		/*-删除*/
		function del() {
			if (confirm("确认删除该条信息吗?")) {
				return true;
			}
			return false;
		}
	</script>
</body>
</html>
