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
		<title>確認画面</title>
		<style type="text/css"></style>
	</head>
	<body>
	画像<br>
	ファイル名：<s:property value="session.userImageFileName"/><br/>
	<img src="img/<s:property value="session.userImageFileName"/>" width="100" height="100"/><br>
	商品名
	<s:property value="session.productName" /><br>
	商品かな
	<s:property value="session.productNameKana" /><br>
	商品詳細
	<s:property value="session.productDescription" /><br>
	カテゴリ
	<s:property value="session.categoryName" /><br>
	値段
	<s:property value="session.price" />円<br>
	発売日
	<s:property value="session.releaseDate" /><br>
	ステータス
	<s:property value="session.StatusName" /><br>

	<a href='<s:url action="MasterAddCompleteAction" />'>完了画面</a>

</body>
</html>