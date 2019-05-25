<%@page import="cn.beihua.vo.Pro"%>
<%@page import="java.util.List"%>
<%@page import="com.opensymphony.xwork2.ActionContext"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"  isELIgnored="false" isErrorPage="false" errorPage="error.jsp" autoFlush="true"%>
<%@page buffer="none" autoFlush="true"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@page import="cn.beihua.comkou.JieShou"%>
<!DOCTYPE >
<html>
<!-- 原生ajax -->
<!-- <script type="text/javascript">

	$(function(){
	
		//1.创建核心对象
		xmlhttp=null;
		if (window.XMLHttpRequest)
		  {// code for Firefox, Opera, IE7, etc.
		  	xmlhttp=new XMLHttpRequest();
		  }
		else if (window.ActiveXObject)
		  {// code for IE6, IE5
		 	 xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		  }

		//2.编写回调函数
		xmlhttp.onreadystatechange=function(){
			//alert(xmlhttp.readyState);
			//if(xmlhttp.readyState==4 && xmlhttp.status==200){
				alert('ok');
				//接受服务器回送过来的数据
				//alert(xmlhttp.responseText);
			//}
		}
		
		//3.open 设置请求的方式和请求路径
		xmlhttp.open("get","${pageContext.request.contextPath}/dao/YkgDao");
		
		//4.send 发送请求
		xmlhttp.send();
	})
</script> -->
	<head>
		<meta charset="utf-8" >
		<link rel="stylesheet" type="text/css" href="css/shop.css">
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
		<meta name="viewport"  content="width=device-width,initial-scale=1.0">
	</head>
	<body>
		<table class="table table-hover"  >
			<thead>
				<tr class="active a1">
					<th>商品</th>
					<th>单价</th>
					<th>数量</th>
					<th>小计</th>
					<th>操作</th>
				</tr>
			<tbody id="ad">
				<s:iterator  value="#session.cList" var="clist">
					<tr>
						<td>
						<%-- <img src=<s:property value="#clist.image"/> class="img-responsive" width="60" height="60"> --%>
						<s:property value="#clist.pname"/>
						</td>
						<td>
							￥<s:property value="#clist.shop_price"/>
						</td>
						<td>
							<span class="reduce"></span>
							<input id="count" name="count" maxlength="4" onpaste="return false;" type="text"  value="1"  class="form-control p" style="float: left;">
						</td>
						<td class="b1">
							￥<s:property value="#clist.shop_price"/>
						</td>
						<td>
							<a href="${ pageContext.request.contextPath }/removeCart.action?id=<s:property value="#clist.id"/>">删除</a>
						</td>
					</tr>
				</s:iterator>
			</tbody>
			</thead>          
		</table>
		
		<div class="container a2">
			 <div class="cost1"><a href="${ pageContext.request.contextPath }/order.action">结算</a></div>
			 <s:iterator  value="#session.d" var="d">
			 <div class="cost">合计：￥<s:property value="#d"/></div>
			 </s:iterator>
		</div>
	</body>
<script language="JavaScript"> 
	function myrefresh() 
	{ 
		window.location.reload(); 
	} 
		//setTimeout('myrefresh()',1000); //指定1秒刷新一次 
</script> 
</html>

