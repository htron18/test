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
		<title>ユーザー情報変更画面</title>
		<style type="text/css"></style>
	</head>
	<body>

<jsp:include page="header.jsp" />

	<h1>パスワード変更</h1>
<!-- ユーザー情報変更フォーム -->
	<label>旧パスワード</label>
	<p><s:property value="session.passCon"/></p>
	<label>新規パスワード</label>
	<div>
		<s:if test="errorPass!=null">
			<s:property value="errorPass" />
		</s:if>
	</div>
	<s:form action="MyPageChangePasswordCompleteAction">
	<label>1回目</label>
	<input type="password" name="new_password_1" placeholder=" 半角英数字 " maxlength="16"><br>
	<label>2回目</label>
	<input type="password" name="new_password_2" placeholder=" 半角英数字 " maxlength="16"><br>

	<s:submit value="パスワード変更完了"/>
	</s:form>


<!-- マイページ画面への遷移 -->
	<p><a href='<s:url action="MyPageAction" />'>マイページ戻る</a></p>

	</body>
</html>