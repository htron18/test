<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="refresh" content="5;URL=<s:url action="AddressSelectAction"/>">
<title>宛先情報登録</title>
</head>
<body>

<jsp:include page="header.jsp" />

<h1>登録が完了しました</h1>
<%-- <h2><span id="timer"></span>秒後に<a href='<s:url action="AddressSelectAction"/>'>商品宛先選択</a>に戻ります。</h2> --%>

<h2>5秒後に<a href='<s:url action="AddressSelectAction"/>'>商品宛先選択</a>に戻ります。</h2> 

<script>
// var waitTime = new Date();
// waitTime = waitTime.getTime()+5000; //5秒間待つ設定


// var countdown = function(wait){
// 	var now = new Date();

// 	var rest = wait - now.getTime();
// 	var counter = Math.floor(rest/1000) % 60;

// 	return counter
// }

// var timer = function(){
// 	var counter = countdown(waitTime);
// 	document.getElementById('timer').textContent = counter;
// 	if(counter != 0){
// 		cycle();
// 	}else{
// 		window.location.href ='<s:url action="AddressSelectAction"/>';
// 	}

// }

// var cycle = function(){
// 	setTimeout(timer, 1000);
// }

// window.onload = function() {
// 	timer();
// 	};

</script>

</body>
</html>