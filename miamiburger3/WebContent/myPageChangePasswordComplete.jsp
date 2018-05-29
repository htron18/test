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
<title>完了画面</title>
<style type="text/css"></style>
</head>
<body>
	<jsp:include page="header.jsp" />

	<p>変更が完了しました</p>
	<p>
		<a href='<s:url action="MyPageAction" />'>マイページへ</a>
	</p>
</body>
</html>