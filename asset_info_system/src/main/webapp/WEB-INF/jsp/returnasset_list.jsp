<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/jquery-ui.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.js"></script>

<script type="text/javascript">
$(document).ready(function() {

	
   $("#returnclick").click(function(){
	   
	   if ($("input[name='returnassetchecked']:checked").size() != 1) {
			alert("请选中一条记录!");
		} else {
			$.ajax({
				url:"returnasset?status=0&assetno="+ $("input[name='returnassetchecked']:checked")[0].value,
		         type:'get',
                success:function(data) {   
                }
            });
			alert("归还成功");
		}
   });
  
	
	$("#checkall").click(function(){ 
        if(this.checked){// 全选  
            $("input[name='returnassetchecked']:checkbox").each(function(){  
            	this.checked=true;  
            });  
        } else {// 取消全选  
            $("input[name='returnassetchecked']:checkbox").each(function(){  
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
				<!--  <li class="click" id="addclick"><span><img src="images/t01.png" /></span>添加</li>-->
<!-- 				<li class="click" id="editclick"><span><img src="images/t02.png" /></span>修改</li> -->
<!-- 				<li class="click" id="delclick"><span><img src="images/t03.png" /></span>删除</li> -->
				<li id="returnclick"><span><img src="images/t04.png" /></span>资产归还</li>
			</ul>

			<ul class="toolbar1">
				<li><span><img src="images/t05.png" /></span>设置</li>
			</ul>

		</div>

		<table class="tablelist">
			<thead>
				<tr>
			        <th><input id="checkall" type="checkbox" /></th> 
					<th>资产编号<i class="sort"><img src="images/px.gif" /></i></th>
					<th>资产类别</th>
					<th>资产名称</th>
					<th>使用部门</th>
					<th>启用日期</th>
					<th>管理人员</th>
					<th>管理人员</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="asset" items="${assets}" varStatus="status">
					<tr>
				<td><input name="returnassetchecked" class="checkbox" type="checkbox" value="${asset.no}" /></td>
						<td>${asset.no}</td>
						<td>${asset.type}</td>
						<td>${asset.assetname}</td>
						<td>2013-09-09 15:05</td>
						<td>${asset.usedate}</td>
						<td>已审核</td>
						<td><a href="return?status=0&assetno=${asset.no}" class="tablelink">归还</a> </td>
						
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

</div>
		
	<script type="text/javascript">
		$('.tablelist tbody tr:odd').addClass('odd');
	</script>

</body>

</html>

