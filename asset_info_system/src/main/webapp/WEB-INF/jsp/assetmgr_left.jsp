<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="js/jquery-1.10.2.min.js"></script>

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
		<span></span>资产管理
	</div>
	<dl class="leftmenu">
		<dd>
			<div class="title">
				<span><img src="images/leftico01.png" /></span>资产转固
			</div>
			<ul class="menuson">
				<li class="active"><cite></cite><a href="storeassetlist?type=usedate&value=null" 
					target="rightFrame">储备资产</a><i></i></li>
				<li><cite></cite><a href="assetstorelist?type=usedate&value=notnull" target="rightFrame">转固资产</a><i></i></li>
			</ul>
		</dd>
		
		<dd>
			<div class="title">
				<span><img src="images/leftico01.png" /></span>租赁管理
			</div>
			<ul class="menuson">
			
				<li class="active "><cite></cite><a href="rentmglist?status=1"
					target="rightFrame">出租管理</a><i></i></li>
				<li><cite></cite><a href="rentmglist?status=3" target="rightFrame">出租中资产</a><i></i></li>
				<li><cite></cite><a href="rentmglist?status=4" target="rightFrame">已出租资产</a><i></i></li>
				<li><cite></cite><a href="returnassetlist?status=3" target="rightFrame">资产归还</a><i></i></li>
				<li><cite></cite><a href="right.html" target="rightFrame">违约金管理</a><i></i></li>
				<li><cite></cite><a href="right.html" target="rightFrame">保证金管理</a><i></i></li>
				<li><cite></cite><a href="right.html" target="rightFrame">租金管理</a><i></i></li>
			</ul>
		</dd>
		
		<dd>
			<div class="title">
				<span><img src="images/leftico01.png" /></span><a href="mortgage?status=0" target="rightFrame">抵押管理</a>
			</div>
		</dd>      
		
		<dd>
			<div class="title">
				<span><img src="images/leftico01.png" /></span><a href="inventory" target="rightFrame">资产盘点</a>
			</div>
		</dd>
		
		<dd>
			<div class="title">
				<span><img src="images/leftico01.png" /></span><a href="depreciation?status=0" target="rightFrame">资产折旧</a>
			</div>
		</dd>
		
		<dd>
			<div class="title">
				<span><img src="images/leftico01.png" /></span>资产处置
			</div>
			<ul class="menuson">
				<li class="active"><cite></cite><a href="sell?status=0"
					target="rightFrame">出售</a><i></i></li>
				<li><cite></cite><a href="transfer?status=0" target="rightFrame">转赠</a><i></i></li>
				<li><cite></cite><a href="discard?status=0" target="rightFrame">报废</a><i></i></li>
				<li><cite></cite><a href="lose?status=0" target="rightFrame">报损</a><i></i></li>
				<li><cite></cite><a href="pankui?status=0" target="rightFrame">盘亏</a><i></i></li>
				<li><cite></cite><a href="qingcan?status=0" target="rightFrame">清理残值</a><i></i></li>
			</ul>
		</dd>
		
		<dd>
			<div class="title">
				<span><img src="images/leftico01.png" /></span>预警管理
			</div>
			<ul class="menuson">
				<li class="active"><cite></cite><a href="asset_list"
					target="rightFrame">预警设置</a><i></i></li>
			</ul>
		</dd>
	</dl>
</body>
</html>
