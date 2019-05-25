<%@page import="cn.beihua.vo.Pro"%>
<%@page import="java.util.List"%>
<%@page import="com.opensymphony.xwork2.ActionContext"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" isELIgnored="false" isErrorPage="false" errorPage="error.jsp" autoFlush="true"%>
<%@taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE >
<html>
	<head>
		<meta charset="utf-8" >
		<link rel="stylesheet" type="text/css" href="css/shop.css">
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
		<meta name="viewport"  content="width=device-width,initial-scale=1.0">
	</head>
	<body>
		<table class="table table-hover">
			<thead>
				<tr class="active a1">
					<th>商品</th>
					<th>单价</th>
					<th>数量</th>
					<th>小计</th>
				</tr>
			<tbody>
				<s:iterator  value="#session.cList" var="clist">
					<tr>
						<td>
						<%-- <img src=<s:property value="#clist.image"/> class="img-responsive" width="60" height="60"> --%>
							<!-- 黑人牙膏 -->
							<s:property value="#clist.pname"/>
						</td>
						<td>
							￥<s:property value="#clist.shop_price"/>
						</td>
						<td>
							<span class="reduce"></span>
							<input type="text"  value="1"  class="form-control p" style="float: left;">
						</td>
						<td class="b1">
							￥<s:property value="#clist.shop_price"/>
						</td>
					</tr>
				</s:iterator>
			
			</tbody>
			</thead>          
		</table>
		<div class="container a2">
			 <s:iterator  value="#session.d" var="d">
			 <div class="cost">合计：￥<s:property value="#d"/></div>
			 </s:iterator>
		</div>
		<div class="container a2">
			<form id="orderForm" action="${ pageContext.request.contextPath }/order_payOrder.action" method="post">
				<input type="hidden" name="oid" value="<s:property value="model.oid"/>"/>
				<div class="container a2">
						<hr />
						<p>
							选择银行：<br/>
							<input type="radio" name="pd_FrpId" value="ICBC-NET-B2C" checked="checked"/>工商银行
							<img src="${ pageContext.request.contextPath }/bank_img/icbc.bmp" align="middle"/>&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="radio" name="pd_FrpId" value="BOC-NET-B2C"/>中国银行
							<img src="${ pageContext.request.contextPath }/bank_img/bc.bmp" align="middle"/>&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="radio" name="pd_FrpId" value="ABC-NET-B2C"/>农业银行
							<img src="${ pageContext.request.contextPath }/bank_img/abc.bmp" align="middle"/>
							<br/>
							<input type="radio" name="pd_FrpId" value="BOCO-NET-B2C"/>交通银行
							<img src="${ pageContext.request.contextPath }/bank_img/bcc.bmp" align="middle"/>&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="radio" name="pd_FrpId" value="PINGANBANK-NET"/>平安银行
							<img src="${ pageContext.request.contextPath }/bank_img/pingan.bmp" align="middle"/>&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="radio" name="pd_FrpId" value="CCB-NET-B2C"/>建设银行
							<img src="${ pageContext.request.contextPath }/bank_img/ccb.bmp" align="middle"/>
							<br/>
							<input type="radio" name="pd_FrpId" value="CEB-NET-B2C"/>光大银行
							<img src="${ pageContext.request.contextPath }/bank_img/guangda.bmp" align="middle"/>&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="radio" name="pd_FrpId" value="CMBCHINA-NET-B2C"/>招商银行
							<img src="${ pageContext.request.contextPath }/bank_img/cmb.bmp" align="middle"/>
						</p>
						<hr />
						<p style="text-align:right">
							<a href="${pageContext.request.contextPath}/record.action">
								<img src="${pageContext.request.contextPath}/images/finalbutton.gif" width="204" height="51" border="0" />
							</a>
						</p>
				</div>
			</form>
		</div>
	</body>
</html>

