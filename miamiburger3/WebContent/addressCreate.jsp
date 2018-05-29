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

	<s:form action="AddressConfirmAction">
		●お名前
		<table>
			<tr>
				<td>姓:</td>
				<td><input type="text" name="family_name" <s:if test="errorSei.equals('')">value=<s:property value="family_name"/> </s:if> ></td>
				<td><s:if test="!errorSei.equals('')"><s:property value="errorSei"/></s:if></td>
			</tr>
			<tr>
				<td>名:</td>
				<td><input type="text" name="first_name" <s:if test="errorMei.equals('')">value=<s:property value="first_name"/> </s:if> ></td>
				<td><s:if test="!errorMei.equals('')"><s:property value="errorMei"/></s:if></td>
			</tr>
		</table>
			●お名前（ひらがな）
			<table>
			<tr>
				<td>せい:</td>
				<td><input type="text" name="family_name_kana" <s:if test="errorSeiKana.equals('')">value=<s:property value="family_name_kana"/> </s:if> ></td>
				<td><s:if test="!errorSeiKana.equals('')"><s:property value="errorSeiKana"/></s:if></td>
			</tr>
			<tr>
				<td>めい:</td>
				<td><input type="text" name="first_name_kana" <s:if test="errorMeiKana.equals('')">value=<s:property value="first_name_kana"/> </s:if> ></td>
				<td><s:if test="!errorMeiKana.equals('')"><s:property value="errorMeiKana"/></s:if></td>
			</tr>
		</table>
			●メールアドレス
			<table>
			<tr>
				<td><input type="text" name="email" size="50" <s:if test="errorEmail.equals('')">value=<s:property value="email"/> </s:if> ></td>
				<td><s:if test="!errorEmail.equals('')"><s:property value="errorEmail"/></s:if></td>
			</tr>
		</table>
			●電話番号
			<table>
			<tr>
				<td><input type="text" name="tel_number" <s:if test="errorTelNumber.equals('')">value=<s:property value="tel_number"/> </s:if> ></td>
				<td><s:if test="!errorTelNumber.equals('')"><s:property value="errorTelNumber"/></s:if></td>
			</tr>
		</table>
			●住所
		<table>
			<tr>
				<td><input type="text" name="user_address" size="50" <s:if test="errorUserAddress.equals('')">value=<s:property value="user_address"/> </s:if> ></td>
				<td><s:if test="!errorUserAddress.equals('')"><s:property value="errorUserAddress"/></s:if></td>
			</tr>
		</table>
		<s:submit value="送信" />
	</s:form>

</body>
</html>