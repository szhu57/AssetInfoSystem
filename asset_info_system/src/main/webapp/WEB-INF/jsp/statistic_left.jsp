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
		<span></span>统计分析
	</div>
	<dl class="leftmenu">
		<dd>
			<div class="title">
				<span><img src="images/leftico01.png" /></span>分类查询
			</div>
			<ul class="menuson">
				<li class="active"><cite></cite><a href="index2.html"
					target="rightFrame">资产综合查询</a><i></i></li>
				<li><cite></cite><a href="right.html" target="rightFrame">资产变动查询</a><i></i></li>
				<li><cite></cite><a href="imgtable.html" target="rightFrame">资产维修查询</a><i></i></li>
				<li><cite></cite><a href="imgtable.html" target="rightFrame">资产折旧查询</a><i></i></li>
			</ul>
		</dd>
		<dd>
			<div class="title">
				<span><img src="images/leftico01.png" /></span>资产台帐
			</div>
			<ul class="menuson">
				<li class="active"><cite></cite><a href="index2.html"
					target="rightFrame">资产总账</a><i></i></li>
				<li><cite></cite><a href="right.html" target="rightFrame">租赁台帐</a><i></i></li>
				<li><cite></cite><a href="imgtable.html" target="rightFrame">资产变动台帐</a><i></i></li>
				<li><cite></cite><a href="imgtable.html" target="rightFrame">自定义台帐</a><i></i></li>
			</ul>
		</dd>
		<dd>
			<div class="title">
				<span><img src="images/leftico01.png" /></span>业务报表
			</div>
			<ul class="menuson">
				<li class="active"><cite></cite><a href="index2.html"
					target="rightFrame">部门报表</a><i></i></li>
				<li><cite></cite><a href="right.html" target="rightFrame">资产类别报表</a><i></i></li>
				<li><cite></cite><a href="imgtable.html" target="rightFrame">自定义报表</a><i></i></li>
				<li><cite></cite><a href="imgtable.html" target="rightFrame">表头设置</a><i></i></li>
			</ul>
		</dd>
	</dl>
</body>
</html>
