
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
        pre.style.wordWrap = "break-word";
        pre.innerHTML = message;
        output.appendChild(pre);
    }

    //当关闭页面时执行，调用后台的OnClose方法
    window.onbeforeunload = function() {
        ws.close();
    };
//___________________________websocket分界线
/*$('.conLeft li').on('click',function(){
		$(this).addClass('bg').siblings().removeClass('bg');
		var intername=$(this).children('.liRight').children('.intername').text();
		$('.headName').text(intername);
		$('.newsList').html('');
	})
	$('.sendBtn').on('click',function(){
		var news=$('#dope').val();
		if(news==''){
			alert('不能为空');
		}else{
			$('#dope').val('');
		var str='';
		str+='<li>'+
				'<div class="nesHead"><img src="image/6.jpg"/></div>'+
				'<div class="news"><img class="jiao" src="image/20170926103645_03_02.jpg">'+news+'</div>'+
			'</li>';
		$('.newsList').append(str);
		setTimeout(answers,1000); 
		$('.conLeft').find('li.bg').children('.liRight').children('.infor').text(news);
		$('.RightCont').scrollTop($('.RightCont')[0].scrollHeight );
	}
	
	})*/
//	function answers(){
//		var arr=["你好","今天天气很棒啊","你吃饭了吗？","我最美我最美","我是可爱的僵小鱼","你们忍心这样子对我吗？","spring天下无敌，实习工资850","我不管，我最帅，我是你们的小可爱","段友出征，寸草不生","一入段子深似海，从此节操是路人","馒头：嗷","突然想开个车","段子界混的最惨的两个狗：拉斯，普拉达。。。"];
//		var aa=Math.floor((Math.random()*arr.length));
//		var answer='';
//		answer+='<li>'+
//					'<div class="answerHead"><img src="image/tou.jpg"/></div>'+
//					'<div class="answers"><img class="jiao" src="image/jiao.jpg">'+arr[aa]+'</div>'+
//				'</li>';
//		$('.newsList').append(answer);	
//		$('.RightCont').scrollTop($('.RightCont')[0].scrollHeight );
//	}
//	$('.ExP').on('mouseenter',function(){
//		$('.emjon').show();
//	})
//	$('.emjon').on('mouseleave',function(){
//		$('.emjon').hide();
//	})
//	$('.emjon li').on('click',function(){
//		var imgSrc=$(this).children('img').attr('src');
//		var str="";
//		str+='<li>'+
//				'<div class="nesHead"><img src="image/6.jpg"/></div>'+
//				'<div class="news"><img class="jiao" src="image/20170926103645_03_02.jpg"><img class="Expr" src="'+imgSrc+'"></div>'+
//			'</li>';
//		$('.newsList').append(str);
//		$('.emjon').hide();
//		$('.RightCont').scrollTop($('.RightCont')[0].scrollHeight );
//	})