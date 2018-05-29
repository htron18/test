<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link rel="stylesheet"type="text/css"href="">
<title>パスワード変更</title>
<style type="text/css">

</style>
</head>
<body>
<jsp:include page="header.jsp" />
<h2>秘密の質問に答えてください</h2>

<s:if test = "!(errorMessage.isEmpty())">
	<s:property value ="errorMessage" />
</s:if>

<s:form action ="ChangePasswordCompleteAction">
<span>あなたのログインID：</span><input type="text" name="userId" size="5"><br>
<span>秘密の質問：</span>
		<select name="secretQuestion">
		<option value = "1">好きな食物</option>
		<option value = "2">好きな生物</option>
		</select>
		<br>
		<span>秘密の質問の答え：</span><input type= "text" name="secretAnswer" value =""><br>

		<span>新しいパスワード：</span><input type= "password" name="password1" value =""><br>
		<span>パスワードの確認：</span><input type= "password" name="password2" value =""><br>
		<s:submit value="送信"/>
	</s:form>
</html>