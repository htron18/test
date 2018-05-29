<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>購入履歴</title>
</head>
<body>

<jsp:include page="header.jsp" />

	<s:if test="emptyMessage == null">

		<s:iterator value="purchaseListDTOList">
			<%-- 		<a href='<s:url action="PurchaseHistoryDetailsAction"><s:param name="listNumber" value="allPurchaseListNumber"/></s:url>'></a> --%>
		 購入日時：<s:property value="registDate" />
			<br>
		 金額:<s:property value="totalPrice" />円
			<br>
			<s:form action="PurchaseHistoryDetailsAction">
				<s:hidden name="allPurchaseListNumber" />

				<s:submit value="詳細" />
			</s:form>

		</s:iterator>

		<s:form action="PurchaseHistoryAction">
			<input type="hidden" name="deleteFlg" value=true />
			<s:submit value="削除" />
		</s:form>

	</s:if>
	<s:else>
		<s:property value="emptyMessage" />
	</s:else>
</body>
</html>