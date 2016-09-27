<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>欢迎登录后台管理系统</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
<script src="js/cloud.js" type="text/javascript"></script>

<script type="text/javascript">
	$(function() {
		$('.loginbox').css({
			'position' : 'absolute',
			'left' : ($(window).width() - 692) / 2
		});
		$(window).resize(function() {
			$('.loginbox').css({
				'position' : 'absolute',
				'left' : ($(window).width() - 692) / 2
			});
		})
		
		
		
		
		
	});
</script>

</head>

<body style="background-color: #1c77ac; background-image: url(images/light.png); background-repeat: no-repeat; background-position: center top; overflow: hidden;">



	<div id="mainBody">
		<div id="cloud1" class="cloud"></div>
		<div id="cloud2" class="cloud"></div>
	</div>


	<div class="logintop">
		<span>欢迎登录后台管理界面平台</span>
		<ul>
			<li><a href="#">回首页</a></li>
			<li><a href="#">帮助</a></li>
			<li><a href="#">关于</a></li>
		</ul>
	</div>

	<div class="loginbody">

		<span class="systemlogo"></span>

		<div class="loginbox">

			<form action="login" method="post">
<!--                <form id="userForm"> -->
				<ul>
					<li><input id="account" name="userName" type="text" class="loginuser" /></li>
					<li><input id="password" name="password" type="text" class="loginpwd" /></li>
					<li><input type="submit" class="loginbtn" value="登录" /><label>
							<input name="" type="checkbox" value="" checked="checked" />记住密码
					</label> <label><a href="#">忘记密码？</a></label>
					<span class="link_pwd"></span></li>
				</ul>
			</form>
		</div>
	</div>

	<div class="loginbm">
		版权所有 2013 <a href="http://www.uimaker.com">uimaker.com</a>
		仅供学习交流，勿用于任何商业用途
	</div>


</body>
<script type="text/javascript" src="js/login.js"></script>
</html>
