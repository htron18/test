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
	<h1>変更内容確認</h1>
<!-- ユーザー情報変更 旧 -->
	姓:
	<s:property value="session.old_familyName" />
	名:
	<s:property value="session.old_firstName" /><br>
	姓（かな）:
	<s:property value="session.old_familyNameKana" />
	名（かな）:
	<s:property value="session.old_firstNameKana" /><br>
	性別:
	<s:property value="session.old_sex_Name" /><br>
	Eメール:
	<s:property value="session.old_email" /><br>
	秘密の質問:
	<s:if test="session.old_secretQuestion==1">好きな食べ物</s:if>
	<s:if test="session.old_secretQuestion==2">好きな動物</s:if><br>
	答え:
	<s:property value="session.old_secretAnswer" /><br>

	<h3>↓</h3>

<!-- ユーザー情報変更 新 -->
	姓:
	<s:property value="session.new_familyName" />
	名:
	<s:property value="session.new_firstName" /><br>
	姓（かな）:
	<s:property value="session.new_familyNameKana" />
	名（かな）:
	<s:property value="session.new_firstNameKana" /><br>
	性別:
	<s:property value="session.new_sex_Name" /><br>
	Eメール:
	<s:property value="session.new_email" /><br>
	秘密の質問:
	<s:if test="session.new_secretQuestion==1">好きな食べ物</s:if>
	<s:if test="session.new_secretQuestion==2">好きな動物</s:if><br>
	答え:
	<s:property value="session.new_secretAnswer" /><br>

	<a href='<s:url action="UserUpdateCompleteAction" />'>変更完了</a>

<!-- マイページ画面への遷移 -->
	<a href='<s:url action="MyPageAction" />'>マイページ戻る</a>
	<a href='<s:url action="UserUpdateAction" />'>変更画面へ戻る</a>

	</body>
</html>