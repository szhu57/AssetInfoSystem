<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<script language="JavaScript" src="js/jquery-1.10.2.min.js"></script>
<link href="css/style.css" rel="stylesheet" type="text/css" />

<script type="text/javascript">
	$(function() {
		//导航切换
		$(".menuson li").click(function() {
			$(".menuson li.active").removeClass("active")
			$(this).addClass("active");
		});

		$('.title').click(function() {
			var $ul = $(this).next('ul');
			$('dd').find('ul').slideUp();
			if ($ul.is(':visible')) {
				$(this).next('ul').slideUp();
			} else {
				$(this).next('ul').slideDown();
			}
		});
	})
</script>
</head>

<body style="background: #f0f9fd;">
	<div class="lefttop">
		<span></span>资产登记
	</div>
	<dl class="leftmenu">
		<dd>
			<div class="title">
				<span><img src="images/leftico01.png" /></span><a href="assetlist?type=&value="
					target="rightFrame">资产类型</a>
			</div>
			<ul class="menuson">
				<c:forEach var="assetType" items="${assetType}" varStatus="status">
					<li><cite></cite><a href="assetlist?type=type&value=${assetType.type}" target="rightFrame">${assetType.type}</a><i></i></li>
				</c:forEach>
			</ul>
		</dd>
		<dd>
			<div class="title">
				<span><img src="images/leftico01.png" /></span>资产来源
			</div>
			<ul class="menuson">
				<c:forEach var="assetSource" items="${assetSource}" varStatus="status">
					<li><cite></cite><a href="assetlist?type=sources&value=${assetSource.sources}" target="rightFrame">${assetSource.sources}</a><i></i></li>
				</c:forEach>
			</ul>
		</dd>
		<dd>
			<div class="title">
				<span><img src="images/leftico01.png" /></span>资产状态
			</div>
			<ul class="menuson">
				<c:forEach var="assetStatus" items="${assetStatus}" varStatus="status">
					<li><cite></cite><a href="assetlist?type=use_status&value=${assetStatus.status}" target="rightFrame">${assetStatus.status}</a><i></i></li>
				</c:forEach>
			</ul>
		</dd>
		<dd>
			<div class="title">
				<span><img src="images/leftico01.png" /></span>基础设置
			</div>
			<ul class="menuson">
				<li class="active"><cite></cite><a href="assettypelist"
					target="rightFrame">资产类型设置</a><i></i></li>
				<li><cite></cite><a href="assetstatuslist" target="rightFrame">资产状态设置</a><i></i></li>
				<li><cite></cite><a href="assetsourcelist" target="rightFrame">资产来源设置</a><i></i></li>
			</ul>
		</dd>
	</dl>
</body>
</html>
