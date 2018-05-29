<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>宛先情報登録</title>
</head>
<body>

<jsp:include page="header.jsp" />

	<h1>宛先情報登録</h1>
	以下の内容で登録します。よろしいですか？

	<table>
		<tr>
			<td>名前：</td>
			<td><s:property value="destinationInfoDTO.getFamilyName()" /></td>
			<td><s:property value="destinationInfoDTO.getFirstName()" /></td>
		</tr>
		<tr>
			<td>ふりがな：</td>
			<td><s:property value="destinationInfoDTO.getFamilyNameKana()" /></td>
			<td><s:property value="destinationInfoDTO.getFirstNameKana()" /></td>
		</tr>
		<tr>
			<td>メールアドレス：</td>
			<td><s:property value="destinationInfoDTO.getEmail()" /></td>
		</tr>
		<tr>
			<td>電話番号：</td>
			<td><s:property value="destinationInfoDTO.getTelNumber()" /></td>
		</tr>
		<tr>
			<td>住所：</td>
			<td><s:property value="destinationInfoDTO.getUserAddress()" /></td>
		</tr>
	</table>

	<a href="<s:url action='AddressCompleteAction'/>">登録する</a>
	<a href="<s:url action='AddressCreateAction'/>">戻る</a>



</body>
</html>