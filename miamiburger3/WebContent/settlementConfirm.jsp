<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>決済確認</title>
<link rel="stylesheet" type="text/css" href="./css/miamiburger.css">
</head>
<body>

<jsp:include page="header.jsp" />

	<h1>決済確認画面</h1>
	<s:iterator value="#session.kessaiDTOList">
		<div class="kessaiInfo">
			<img src=<s:property value="imageFilePath"/> alt=<s:property value="imageFileName"/> />

				商品名：<s:property value="productName" />
				<br>
				個数：<s:property value="productCount" />
				<br>
				金額：￥<s:property value="totalPrice" />（1個あたりの価格：￥<s:property value="price" />)
				<br>
				宛先：<s:property value="address" />
				<div class="clearLeft"></div>
		</div>
	</s:iterator>

	<h2>合計金額：<s:property value="#session.kessaiPrice"/>円</h2>

	<a href=<s:url action="AddressSelectAction"/>>訂正する</a>
	<a href=<s:url action="SettlementCompleteAction"/>>確定する</a>
</body>
</html>