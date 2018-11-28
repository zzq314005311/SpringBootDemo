<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'lawyer-detaill.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/templatemo-orange.css">
	<script type="text/javascript" src="lib/jquery/1.9.1/jquery.js"></script>
<script type="text/javascript">
    var ws;
    var wsUri = "ws://127.0.0.1:8080/xinnuo/websocket2";
    ws = new WebSocket(wsUri);
    //接收后台getBasicRemote().sendText()的内容
    /* ws.onmessage = function(message) {
        writeToScreen(message.data);
    }; */

    //向后台发送信息 OnMessage接收
    function button(asd) {
        ws.send(asd);
       
    }

    //发生错误时
 /*    ws.onerror = function(msg) {
        writeToScreen('<span style="color:red;">系统出错啦</span>' + msg.data);
        ws.close();
    }; */

    //聊天信息写入窗口中
    function writeToScreen(message) {
        var pre = document.createElement("p");
        pre.style.wordWrap = "break-word ";
        pre.innerHTML = message;	
        output.appendChild(pre)
    }

    //当关闭页面时执行，调用后台的OnClose方法
  /*   window.onbeforeunload = function() {
        ws.close();
    }; */
</script>
  </head>
  
  <body data-spy="scroll" data-target=".navbar-collapse">

<!-- preloader section -->
<div class="preloader">
	<div class="sk-spinner sk-spinner-wordpress">
       <span class="sk-inner-circle"></span>
     </div>
</div>

<!-- header section -->


<!-- about and skills section -->
<section class="container">
	<div class="row">
		<div class="col-md-6 col-sm-12">
			<div class="about">
				<h3 class="accent">律师简介</h3>
				<hr/>
				<h4>专业:
				<c:forEach items="${asList} " var="major">
				${major}
				</c:forEach> 
				
				</h2>
				        <p style="color:#00000" >&nbsp&nbsp&nbsp
				        
					     ${findAll.describe}
						</p>
							
			</div>
		
		</div>
		<div class="col-md-6 col-sm-12">
			<div class="skills">
				
		
	
		<div class="row">
			<div class="col-md-12 col-sm-12">
				<img height="300px" width="170px" src="image/${findAll.head}" class="img-responsive img-circle tm-border" alt="templatemo easy profile">
			</div>
		</div>
	<h1 class="tm-title bold shadow" style="">&nbsp&nbsp${selectLawyer.name}</h1>
	<div   style="width:300px ;height:150px;float:right;transform:translateY(-200px)" >
	<form action="lewyerChat.do">
	<input type="hidden" value="${selectLawyer.id}">
	<center><input type="submit" onsubmit="button(${selectLawyer.id})" class="btn btn-primary" value="点击发起咨询"  style="margin: 30px"></center>
	<center>律师接待时间:${selectLawyer.service_Time}</center>
	</form>
	</div>
			</div>
			
			
		</div>
	</div>
</section>

<!-- education and languages -->
<section class="container">
	<div class="row">
		<div class="col-md-8 col-sm-12">
			<div class="education">
				<h2 class="white">Education</h2>
					<div class="education-content">
						<h4 class="education-title accent">用户评分:${selectLawyer.average}</h4>
							<div class="education-school">
								<h5>School of Media</h5><span></span>
								<h5>2030 January - 2034 December</h5>
							</div>
						
						</p>
					</div>
			</div>
		</div>
		<div class="col-md-4 col-sm-12">
			<div class="languages">
				<h2>联系方式</h2>
				<h5>执业机构:${lawInstitute.name}</h5>
					<ul>
						<li>律师电话:${selectLawyer.phonenum}(请说明来自信诺网)</li>
						<li>执业证号:${institute.card}</li>
						<li>律师邮箱:${selectLawyer.email}</li>
						<li>联系地址:${institute.address}</li>
					</ul>
			</div>
		</div>
	</div>
</section>


<!-- footer section -->
<footer>
	<div class="container">
		<div class="row">
			<div class="col-md-12 col-sm-12">
				<ul class="social-icons">
					<li><a href="#" class="fa fa-facebook"></a></li>
                    <li><a href="#" class="fa fa-google-plus"></a></li>
					<li><a href="#" class="fa fa-twitter"></a></li>
					<li><a href="#" class="fa fa-dribbble"></a></li>
					<li><a href="#" class="fa fa-github"></a></li>
					<li><a href="#" class="fa fa-behance"></a></li>
				</ul>
			</div>
		</div>
	</div>
</footer>

<!-- javascript js -->	
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>	
<script src="js/jquery.backstretch.min.js"></script>
<script src="js/custom.js"></script>

</body>
</html>
