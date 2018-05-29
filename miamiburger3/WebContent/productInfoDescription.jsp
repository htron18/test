<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<meta charset="utf-8">
<title>製品詳細</title>

<style>
.main_container {
	min-width: 1280px;
}

.product_container{
	float:left;
	width:33%;
	border:1px solid red;
	text-align:center;
}

</style>
</head>
<body>

<jsp:include page="header.jsp" />

	<div class="main_container">
		<s:form action="InsertCartAction">
			商品ID:<s:property value="session.productId" />　カテゴリID：<s:property value="session.categoryId" /><br>
			商品名：<s:property value="session.productName" />
			<s:property value="session.productNameKana" /><br>
			商品説明：<s:property value="session.productDescription" /><br>
			価格：<s:property value="session.price" />円<br>
			発売年月：<s:property value="session.releaseDate" /><br>
			
			<s:hidden name="productId"/>
			<s:hidden name="price"/>
			
			<select name="productCount">
			<s:iterator value="htmlList">
				<option value=<s:property value="count"/>><s:property value="count"/>個</option>
			</s:iterator>
			</select>
			<img src='<s:property value="session.imageFilePath" />' alt=<s:property value="session.imageFileName" />/>
			<s:submit value="カートに追加" />
		</s:form>

		<s:iterator value="sugestList">
			<div class="product_container">
				<a href="<s:url action="ProductInfoDescriptionAction">
					<s:param name="id" value="%{id}"/>
					<s:param name="productId" value="%{productId}"/>
					<s:param name="productName" value="%{productName}"/>
					<s:param name="productNameKana" value="%{productNameKana}"/>
					<s:param name="productDescription" value="%{productDescription}"/>
					<s:param name="categoryId" value="%{categoryId}"/>
					<s:param name="price" value="%{price}"/>
					<s:param name="imageFilePath" value="%{imageFilePath}"/>
					<s:param name="imageFileName" value="%{imageFileName}"/>
					<s:param name="releaseDate" value="%{releaseDate}"/>
					<s:param name="status" value="%{status}"/>
					<s:param name="registDate" value="%{registDate}"/>
					<s:param name="UpdateDate" value="%{UpdateDate}"/>
					</s:url>">

					<img src="<s:property value= 'imageFilePath'/>">
					<span><s:property value="productName" /></span>
					<br>
					<span> <s:property value="productNameKana" /></span>
					<br>
					<span> <s:property value="price" />円</span>
				</a>
			</div>
		</s:iterator>
	</div>

</body>
</html>