<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品宛先選択</title>
<link rel="stylesheet" type="text/css" href="./css/miamiburger.css">
<script src="http://code.jquery.com/jquery-2.2.4.min.js"></script>
</head>
<body>

<jsp:include page="header.jsp" />

	<h1>商品の宛先を選択してください。</h1>
	<h2>宛先一覧：<a href=<s:url action="AddressCreateAction"/>>新規宛先作成</a></h2>

<s:form action="SettlementConfirmAction">
	<s:iterator value="#session.destinationDTOList" status="status">
		<div class="destinationContainer">
		<s:if test="#status.first">
		<label><input type ="radio" name="eachSelectAddress" value=<s:property value="userAddress" /> checked="checked" >この宛先を使用する(一括変更)</label>
		</s:if>
		<s:else>
		<label><input type ="radio" name="eachSelectAddress" value=<s:property value="userAddress" /> >この宛先を使用する(一括変更)</label>
		</s:else>
			<br>
			宛名：
			<s:property value="familyName" />
			<s:property value="firstName" />
			<br>
			ふりがな：
			<s:property value="familyNameKana" />
			<s:property value="firstNameKana" />
			<br>
			Email:
			<s:property value="email" />
			<br>
			宛先：<span class="addrss"><s:property
					value="userAddress" /></span> <br> TEL ：
			<s:property value="telNumber" />
		</div>
	</s:iterator>
	<s:if test="#session.destinationDTOList.isEmpty()">
			宛先がありません。<a href=<s:url action="AddressCreateAction"/>>宛先を作成してください。</a>
		</s:if>
		<s:else>
			<s:submit value="決済"/>
		</s:else>
</s:form>
	
		<div id="selectCartContainer">
			<h2>カート内容：</h2>
			<s:iterator value="#session.cartList">
				<div class="selectCart">
					<img src=<s:property value="imageFilePath"/> alt=<s:property value="imageFileName"/>/>
					商品名：
					<s:property value="productName" />
					<br> 個数：
					<s:property value="productCount" />
					<br> 金額：￥
					<s:property value="totalPrice" />
					（1個あたりの価格：￥
					<s:property value="price" />)<br>
					<div class="clearLeft"></div>
				</div>
			</s:iterator>
		</div>
		

	


</body>
</html>