<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>カート内容</title>
</head>
<body>

<jsp:include page="header.jsp" />

<h1>カート内容</h1>

<h3>カート合計金額：<s:property value="totalPrice"/>円</h3>

<s:iterator value="#session.cartList">
	商品名:
	<s:property value="productName"/><br>
	ふりがな:
	<s:property value="productNameKana"/><br>

	<img src='<s:property value="imageFilePath"/>'width="100" height="100" alt=<s:property value="imageFileName"/>/><br>
	数量:
	<s:property value="productCount"/><br>
	値段:
	<s:property value="price"/><br>
	購入個数合計金額:
	<s:property value="totalPrice"/><br>
	カテゴリー:
	<s:property value="categoryId"/><br>
	発売年月日：
	<s:property value="releaseDate"/><br>
	商品詳細:
	<s:property value="productDescription"/><br>

	<s:form action ="CartDeleteAction">
		<s:hidden name="cartId"/>
	<s:submit value="削除"/>

	</s:form>
</s:iterator>

<s:if test="!#session.cartList.isEmpty() && #session.containsKey('userInfoDTO')">
	<s:form action="AddressSelectAction">
		<s:submit value="決済"/>
	</s:form>
</s:if>
<s:elseif test="!#session.cartList.isEmpty()">
	<s:form action="LoginAction">
		<s:submit value="決済"/>
	</s:form>
</s:elseif>


		<s:if test="cartList.isEmpty()">
			<!--カートリストが空(0)の時、trueを返す-->
				<p>カートの中は空です</p>
				</s:if>
			<s:else>
				<p class="message"><s:property value="cartList.size()"/>件の商品があります</p>
			</s:else>

</body>
</html>