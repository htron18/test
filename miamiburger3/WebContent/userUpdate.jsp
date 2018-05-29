<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="Content-Style-Type" content="text/css" />
		<meta http-equiv="Content-Script-Type" content="text/javascript" />
		<meta http-equiv="imagetoolbar" content="no" /> <meta name="description" content="" />
		<meta name="keywords" content="" />
		<title>ユーザー情報変更入力画面</title>
		<style type="text/css"></style>
	</head>
	<body>

<jsp:include page="header.jsp" />

	<h1>ユーザー情報変更</h1>
<!-- ユーザー情報変更フォーム -->
	<s:form action="UserUpdateConfirmAction">
		<table>
			<tr>
				<td>姓※16文字以内</td>
				<td><input name="new_familyName" maxlength="16" value="<s:property value="session.new_familyName" />"></td>
			</tr>
			<tr>
				<td>名※16文字以内</td>
				<td><input name="new_firstName" maxlength="16" value="<s:property value="session.new_firstName" />"></td>
			</tr>
			<tr>
			<td><s:if test="errorName!=null">
				<s:property value="errorName" />
			</s:if></td>
			</tr>
			<tr>
				<td>姓（かな）※16文字以内</td>
				<td><input name="new_familyNameKana" maxlength="16" value="<s:property value="session.new_familyNameKana" />"></td>
			</tr>
			<tr>
				<td>名（かな）※16文字以内</td>
				<td><input name="new_firstNameKana" maxlength="16" value="<s:property value="session.new_firstNameKana" />"></td>
			</tr>
			<tr>
			<td><s:if test="errorName!=null">
				<s:property value="errorName" />
			</s:if></td>
			</tr>
			<tr>
				<td>性別</td>
					<s:if test="session.get('new_sex') == 0 ">
						<td><input type="radio" name="new_sex" value="0" checked>男性</td>
						<td><input type="radio" name="new_sex" value="1">女性</td>
						</s:if>
					<s:else>
						<td><input type="radio" name="new_sex" value="0">男性</td>
						<td><input type="radio" name="new_sex" value="1" checked>女性</td>
					</s:else>
			</tr>
			<tr>
				<td>Eメール※14文字～32文字</td>
				<td><input name="new_email" maxlength="32" value="<s:property value="session.new_email" />"></td>
				<td><s:if test="errorEmail!=null"><s:property value="errorEmail" /></s:if></td>
			</tr>
			<tr>
				<td>秘密の質問</td>
					<td><s:if test="session.new_secretQuestion==1">
					<select name="new_secretQuestion" >
						<option value=null>選択してください</option>
						<option value="1" selected>好きな食べ物</option>
						<option value="2">好きな動物</option>
					</select>
					</s:if>
					<s:elseif test="session.new_secretQuestion==2">
					<select name="new_secretQuestion" >
						<option value=null>選択してください</option>
						<option value="1">好きな食べ物</option>
						<option value="2" selected>好きな動物</option>
					</select>
					</s:elseif></td>
			</tr>
			<tr>
				<td>秘密の答え</td>
				<td><input name="new_secretAnswer" maxlength="10" value="<s:property value="session.new_secretAnswer" />"></td>
				<td><s:if test="errorAnswer!=null">
					<s:property value="errorAnswer" />
				</s:if></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td><s:submit value="確認画面へ"/></td>
			</tr>
	</table>

	</s:form>


<!-- マイページ画面への遷移 -->
	<p><a href='<s:url action="MyPageAction" />'>マイページ戻る</a></p>

	</body>
</html>