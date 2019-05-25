<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE >
<html>
	<head>
		<meta charset="utf-8" />
		<link  rel="stylesheet" type="text/css" href="css/404.css" />
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
		<meta name="viewport"  content="width=device-width,initial-scale=1.0">
	</head>
		<body>
			<div class="box">
				<div class="small">
					<p class="aa">404</p>
					<p class="bb"> 页面没有找到</p>
					<p class="cc"><b class="dd"><a href="${ pageContext.request.contextPath }/shop.action">返回首页</a></b></p>
				</div>
			</div>
		</body>
</html>