<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ログイン画面</title>

<script>
	function goLoginAction(){
		document.getElementById("form").action="LoginAction";
	}
</script>

</head>
<body>
<h2>login Page</h2>
	<s:form action="LoginAction" id="form">
		<s:label value="ログインID:"/><s:textfield name="userId" placeholder="ログインID"/><br>
		<s:if test="!#session.loginIdErrorMessageList.isEmpty()">
			<div class="error-message">
			<s:iterator value="#session.loginIdErrorMessageList"><s:property/><br></s:iterator>
			</div>
		</s:if>
		<br>
		<s:label value="パスワード:"/><s:password name="password" placeholder="パスワード"/><br>
		<s:if test="!#session.passwordErrorMessageList.isEmpty()">
			<div class="error-message">
			<s:iterator value="#session.passwordErrorMessageList"><s:property/><br></s:iterator>
			</div>
		</s:if>
		<br>
		<s:label value="ログインID保存"/><s:checkbox name="saveIdFlg" fieldValue="false"/><br>
		<s:submit value="ログイン" onclick="goLoginAction();"/><br>
	</s:form>
</body>
</html>
