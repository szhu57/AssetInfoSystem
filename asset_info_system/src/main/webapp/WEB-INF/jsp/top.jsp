<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="js/jquery.js"></script>
<script type="text/javascript">
$(function(){	
	//顶部导航切换
	$(".nav li a").click(function(){
		$(".nav li a.selected").removeClass("selected")
		$(this).addClass("selected");
	})	
})	
</script>


</head>

<body style="background:url(images/topbg.gif) repeat-x;">

    <div class="topleft">
    <a href="main.html" target="_parent"><img src="images/logo.png" title="系统首页" /></a>
    </div>
        
    <ul class="nav">
    <li><a href="index_left" target="leftFrame" class="selected"><img src="images/icon01.png" title="首页" /><h2>首页</h2></a></li>
    <li><a href="assetreg_left"  target="leftFrame"><img src="images/icon03.png" title="资产登记" /><h2>资产登记</h2></a></li>
    <li><a href="assetmgr_left"  target="leftFrame"><img src="images/icon03.png" title="资产管理" /><h2>资产管理</h2></a></li>
    <li><a href="contract_left"  target="leftFrame"><img src="images/icon04.png" title="合同档案管理" /><h2>合同档案</h2></a></li>
    <li><a href="statistic_left" target="leftFrame"><img src="images/icon03.png" title="统计分析" /><h2>统计分析</h2></a></li>
    <li><a href="assetcard_left"  target="leftFrame"><img src="images/icon03.png" title="资产卡片" /><h2>资产卡片</h2></a></li>
    <li><a href="bussapproval_left"  target="leftFrame"><img src="images/icon03.png" title="业务审批" /><h2>业务审批</h2></a></li>
    <li><a href="contact_left"  target="leftFrame"><img src="images/icon03.png" title="信息交流" /><h2>信息交流</h2></a></li>
    <li><a href="systemmgr_left"  target="leftFrame"><img src="images/icon06.png" title="系统管理" /><h2>系统管理</h2></a></li>
    </ul>
            
    <div class="topright">    
    <ul>
    <li><span><img src="images/help.png" title="帮助"  class="helpimg"/></span><a href="#">帮助</a></li>
    <li><a href="#">关于</a></li>
    <li><a href="login.html" target="_parent">退出</a></li>
    </ul>
     
    <div class="user">
    <span>admin</span>
    <i>消息</i>
    <b>5</b>
    </div>    
    
    </div>

</body>
</html>
