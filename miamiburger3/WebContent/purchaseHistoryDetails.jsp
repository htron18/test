<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>購入履歴 詳細</title>
</head>
<body>

<jsp:include page="header.jsp" />

	<p>詳細購入履歴</p>
<s:iterator value="#session.PHDList">
		商品名:				<s:property value="productName" /><br>
		商品名かな:			<s:property value="productNameKana" /><br>
		価格: 				<s:property value="price" /><br>
		<img src=<s:property value="imageFilePath"/> alt=<s:property value="imageFileName" />/><br>


</s:iterator>
</body>
</html>



