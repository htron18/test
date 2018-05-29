
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
<link rel="stylesheet" type="text/css" href="">
    <link rel="stylesheet" href="./css/header.css">
<title>ヘッダー</title>
<style type="text/css">
</style>


</head>
<body >

<header>


    <ul class ="menu">
        <li><img src="dummy.png"></li>
            <li><a href="<s:url action="HomeAction"/>">ホーム</a></li>

        <s:if test="#session.containsKey('userInfoDTO')">
            <li><a href="<s:url action="MyPageAction"/>">マイページ</a></li>
        </s:if>

            <li><a href="<s:url action="CartAction"/>">カート</a> </li>
            <li><a href="<s:url action="ProductInfoAction"/>">商品一覧</a></li>
            <li><a href="<s:url action="CreateBurgerAction"/>">クリエイトバーガー</a></li>
        <s:if test="!(#session.containsKey('userInfoDTO'))">
            <li><a href="<s:url action="LoginAction"/>">ログイン</a></li>
        </s:if>

        <s:if test="!(#session.userInfoDTO.userId =='')">
            <li><a href="<s:url action="LogoutAction"/>">ログアウト</a></li>
        </s:if>

            <li><a id="text" onclick="btn1_click()">商品検索</a></li>
        </ul>

		<!-- ///////////////////////検索機能///////////////////////// -->


<br><br>
<div class ="searchBox">
    <s:form action="ProductInfoAction" id="p1">
        <span>カテゴリ：</span>
			<select name="categoryId">
                <s:iterator value="#session.mCategoryDTOList">
					<s:if test="categoryId < 5">
						<option value="<s:property value ='categoryId'/>"><s:property
								value="categoryName" /></option>
					</s:if>
				</s:iterator>
			</select>

			<label><span>検索ワード:</span>
			<input type="text" name="search"
				value="<s:property value ='search'/>"></label>
			<span><s:submit value="検索" /></span>
		</s:form>
</div>

	<!-- ///////////////////////ここまで///////////////////////// -->

    </header>
<script>
//初期表示は非表示
document.getElementById("p1").style.display ="none";

function btn1_click(){
	var y1 = document.getElementById("p1");

	if(y1.style.display=="block"){
		// noneで非表示
		y1.style.display ="none";
	}else{
		// blockで表示
		y1.style.display ="block";
	}
}
</script>
</body>
</html>