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
		<span></span>合同档案
	</div>
	<dl class="leftmenu">
		<dd>
			<div class="title">
				<span><img src="images/leftico01.png" /></span>合同管理
			</div>
			<ul class="menuson">
				<li class="active"><cite></cite><a href="index2.html"
					target="rightFrame">合同登记</a><i></i></li>
				<li><cite></cite><a href="right.html" target="rightFrame">合同支付</a><i></i></li>
				<li><cite></cite><a href="right.html" target="rightFrame">查询</a><i></i></li>
			</ul>
		</dd>
		<dd>
			<div class="title">
				<span><img src="images/leftico01.png" /></span>档案管理
			</div>
			<ul class="menuson">
				<li class="active"><cite></cite><a href="index2.html"
					target="rightFrame">档案上传</a><i></i></li>
				<li><cite></cite><a href="right.html" target="rightFrame">查询</a><i></i></li>
			</ul>
		</dd>
		<dd>
			<div class="title">
				<span><img src="images/leftico01.png" /></span>基础设置
			</div>
			<ul class="menuson">
				<li class="active"><cite></cite><a href="index2.html"
					target="rightFrame">合同类型</a><i></i></li>
				<li><cite></cite><a href="right.html" target="rightFrame">档案类型</a><i></i></li>
			</ul>
		</dd>
	</dl>
</body>
</html>
