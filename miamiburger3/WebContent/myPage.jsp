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
		<title>MyPage画面</title>
		<style type="text/css"></style>
	</head>
	<body>

<jsp:include page="header.jsp" />

	<h1>マイページ（ユーザー情報）</h1>
<!-- ユーザー情報 -->
	ユーザーID:
	<s:property value="session.userId" /><br>
	姓:
	<s:property value="session.new_familyName" />
	名:
	<s:property value="session.new_firstName" /><br>
	姓(かな):
	<s:property value="session.new_familyNameKana" />
	名(かな):
	<s:property value="session.new_firstNameKana" /><br>
	性別:
	<s:property value="session.old_sex_Name" /><br>
	Eメール:
	<s:property value="session.new_email" /><br>
	秘密の質問:
	<s:if test="sesssion.new_secretQuestion==1">好きな食べ物</s:if>
	<s:if test="session.new_secretQuestion==2">好きな動物</s:if><br>
	秘密の答え:
	<s:property value="session.new_secretAnswer" /><br>
	登録日:
	<s:property value="session.new_registDate" /><br>
	更新日:
	<s:property value="session.new_registDate" /><br>
<!-- 購入履歴画面への遷移 -->
	<a href='<s:url action="PurchaseHistoryAction" />'>購入履歴</a>
<!-- ユーザー情報変更画面への遷移 -->
	<a href='<s:url action="UserUpdateAction" />'>ユーザー情報変更</a>
<!-- パスワード再設定画面への遷移 -->
	<a href='<s:url action="MyPageChangePasswordAction" />'>パスワード変更</a>
	</body>
</html>
