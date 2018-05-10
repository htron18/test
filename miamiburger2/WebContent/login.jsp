<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ログイン画面</title>
</head>
<body>
<h2>login Page</h2>
	<s:form action="LoginAction">
		<s:label value="ログインID:"/><s:textfield name="loginId" placeholder="ログインID"/><br>
		<s:if test="!#session.loginIdErrorMessageList.isEmpty()">
			<div class="error-message">
			<s:iterator value="#session.passwordErrorMessageList"><s:property/><br></s:iterator>
			</div>
		</s:if>
		<br>
		<s:label value="パスワード:"/><s:password name="password" placeholder="パスワード"/><br>
		<s:if test="!session.passwordErrorMessageList.isEmpty()">
			<div class="error-message">
			<s:iterator value="#session.passwordErrorMessageList"><s:property/><br></s:iterator>
			</div>
		</s:if>
		<br>
		<s:label value="ログインID保存"/><s:checkbox name="saveLoginId" fieldValue="false"/><br>
		<s:submit value="ログイン" onclick="goLoginAction();"/><br>
	</s:form>
</body>
</html>