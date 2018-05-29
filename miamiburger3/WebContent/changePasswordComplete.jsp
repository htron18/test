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
<title>パスワード変更完了</title>
<style type="text/css">

</style>
</head>
<body>
<jsp:include page="header.jsp" />

<h2>パスワード変更が完了しました</h2>

<a href="<s:url action="LoginAction"/>">Loginからログインしてください</a>
</body>
</html>