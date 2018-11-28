
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'chat.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<!--/xinnuo/src/main/webapp/lib/jquery/1.9.1/jquery.js  -->
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.js"></script>
<script type="text/javascript">
    var ws;
    var wsUri = "ws://localhost:8080/xinnuo/websocket";
    ws = new WebSocket(wsUri);
    //接收后台getBasicRemote().sendText()的内容
    ws.onmessage = function(message) {
        writeToScreen(message.data);
    };

    //向后台发送信息 OnMessage接收
    function button() {
        message = document.getElementById('in').value;
        ws.send(message);
    }

    //发生错误时
    ws.onerror = function(msg) {
        writeToScreen('<span style="color:red;">系统出错啦</span>' + msg.data);
        ws.close();
    };

    //聊天信息写入窗口中
    function writeToScreen(message) {
        var pre = document.createElement("p");
        pre.style.wordWrap = "break-k'word";
        pre.innerHTML = message;
        output.appendChild(pre);
    }

    //当关闭页面时执行，调用后台的OnClose方法
    window.onbeforeunload = function() {
        ws.close();
    };
</script>
  </head>
  
  <body>
    <div
        style="width: 400px; height: 260px; overflow: scroll; border: 1px solid;"
        id="output"></div>
    <br />
    <div style="text-align: left;">
        <form action="">
            <input id="in" name="message" value="" type="text"
                style="width: 400px; height: 60px; border: 1px solid;"> <br />
            <br /> <input onclick="button()" value="发送"  type="button" />
        </form>
    </div>
  </body>
</html>
