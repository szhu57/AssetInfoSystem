<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/jquery-ui.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
		
		$("#addclick").click(function() {
			$("#add").fadeIn(200);
		});

		$("#addtop a").click(function() {
			$("#add").fadeOut(200);
		});
		
		$("#delclick").click(function() {
			if ($("input[name='assetsourcechecked']:checked").size() == 0) {
				alert("选择不能为空!");
			} else {
				$("#del").fadeIn(200);
			} 
		});
		
		$("#deltop a").click(function() {
			$("#del").fadeOut(200);
		});

		$(".sure").click(function() {
			$(".tip").fadeOut(100);
		});

		$(".cancel").click(function() {
			$(".tip").fadeOut(100);
			$(".edit").fadeOut(100);
		});
		
		$("#delbutton").click(function() {
			var delIds = new Array();
			$("input[name='assetsourcechecked']:checked").each(function () {
				delIds.push(this.value);
            });
			$.ajax({
                url:"assetsourcebatchdelete",
                type:'post',
                data: {assetSourceIds:delIds.join(',')},
                success:function(data) {
                	 location.reload();
                }
            });
		});
		
	    $("#checkall").click(function(){ 
            if(this.checked){// 全选  
                $("input[name='assetsourcechecked']:checkbox").each(function(){  
                	this.checked=true;  
                });  
            } else {// 取消全选  
                $("input[name='assetsourcechecked']:checkbox").each(function(){  
                	this.checked=false;
                });  
            }  
        });  
	});
	
</script>
</head>

<body>

	<div class="place">
		<span>位置：</span>
		<ul class="placeul">
			<li><a href="#">首页</a></li>
			<li><a href="#">数据表</a></li>
			<li><a href="#">基本内容</a></li>
		</ul>
	</div>

	<div class="rightinfo">

		<div class="tools">

			<ul class="toolbar">
				<li class="click" id="addclick"><span><img src="images/t01.png" /></span>添加</li>
				<li class="click" id="delclick"><span><img src="images/t03.png" /></span>删除</li>
			</ul>

		</div>

		<table class="tablelist">
			<thead>
				<tr>
					<th><input id="checkall" type="checkbox" /></th>
					<th>资产来源<i class="sort"><img src="images/px.gif" /></i></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="assetSource" items="${assetSources}" varStatus="status">
					<tr>
						<td><input name="assetsourcechecked" class="checkbox" type="checkbox" value="${assetSource.id}" /></td>
						<td>${assetSource.sources}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

		<div class="pagin">
			<div class="message">
				共<i class="blue">1256</i>条记录，当前显示第&nbsp;<i class="blue">2&nbsp;</i>页
			</div>
			<ul class="paginList">
				<li class="paginItem"><a href="javascript:;"><span
						class="pagepre"></span></a></li>
				<li class="paginItem"><a href="javascript:;">1</a></li>
				<li class="paginItem current"><a href="javascript:;">2</a></li>
				<li class="paginItem"><a href="javascript:;">3</a></li>
				<li class="paginItem"><a href="javascript:;">4</a></li>
				<li class="paginItem"><a href="javascript:;">5</a></li>
				<li class="paginItem more"><a href="javascript:;">...</a></li>
				<li class="paginItem"><a href="javascript:;">10</a></li>
				<li class="paginItem"><a href="javascript:;"><span
						class="pagenxt"></span></a></li>
			</ul>
		</div>


		<div class="edit" id="add">
			<div class="edittop" id="addtop">
				<span>添加资产状态</span><a></a>
			</div>

			<div class="formbody">
				<form action="assetsourceadd" method="post">
					资产状态：<input name="sources" id="addsource" class="select1"/>
					<div class="editbtn">
						<input type="submit" class="sure" value="确定" />&nbsp; 
						<input type="button" class="cancel" value="取消" />
					</div>
				</form>
			</div>
		</div>
		
	    <div class="tip" id="del">
	    	<div class="tiptop" id="deltop"><span>提示信息</span><a></a></div>
	        
	      	<div class="tipinfo">
	        	<span><img src="images/ticon.png" /></span>
	        	<div class="tipright">
	        	<p>是否确认删除 ？</p>
	       	 	<cite>如果是请点击确定按钮 ，否则请点取消。</cite>
	       		</div>
	       	</div>
	        
	        <div class="tipbtn">
		        <input id="delbutton" type="button" class="sure" value="确定" />&nbsp;
		        <input name="" type="button" class="cancel" value="取消" />
	        </div>
	    </div>
    
    </div>
		
	<script type="text/javascript">
		$('.tablelist tbody tr:odd').addClass('odd');
	</script>

</body>

</html>
