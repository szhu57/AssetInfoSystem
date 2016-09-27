<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/jquery-ui.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.js"></script>
<!-- <!-- 新 Bootstrap 核心 CSS 文件 --> 
<!-- <link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css"> -->
<!-- <!-- 最新的 Bootstrap 核心 JavaScript 文件 --> 
<!-- <script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script> -->
<script type="text/javascript">
	$(document).ready(function() {

		$("#addclick").click(function() {
			$('#TypeTable').children('tbody').empty();
			$.ajax({
				url : "inistatuslist?status=0",
				type : 'get',
				success : function(data) {
					var tbody = "";
					$.each(data, function(index, el) {
						
						var tr = "<tr>";
						tr += "<td>" +"<input type=" +"\"" +"checkbox"+ "\"" +"name="+"\"" +"assetchecked"+ "\""+
						"value="+ "\""+el.no +"\"" +"class="+"\"" +"checkbox"+ "\""
						+ "/>"  +  "</td>";
						tr += "<td>" + el.no + "</td>";
						tr += "<td>" + el.type + "</td>";
						tr += "<td>" + el.assetname + "</td>";
						tr += "<td>" + "2013-09-09 15:05" + "</td>";
						tr += "<td>" + el.usedate + "</td>";
						tr += "<td>" + "已审核" + "</td>";
						tr += "</tr>";
						tbody += tr;
					});
					$('#TypeTable').children('tbody').append(tbody);
				}
			});
			$("#add").fadeIn(200);
			//window.location.reload();

		});
       $("#rentclick").click(function(){
    	   
    	   if ($("input[name='rentassetchecked']:checked").size() != 1) {
				alert("请选中一条记录!");
			} else {
				$.ajax({
	                url:"asset?assetId=" + $("input[name='rentassetchecked']:checked")[0].value,
	                type:'get',
	                success:function(data) {
	                	fillInEdit(data);
	                }
	            });
    	       $("#rent").fadeIn(200);
			}
       });
       $("#renttop a").click(function(){
    	   
    	   $("#rent").fadeOut(200);
       });
		$(".cancel").click(function() {
			$(".tip").fadeOut(100);
			$(".edit").fadeOut(100);
		});
		
		$("#addtop a").click(function() {
			$("#add").fadeOut(200);
		});
		$("#checkall").click(function(){ 
            if(this.checked){// 全选  
                $("input[name='assetchecked']:checkbox").each(function(){  
                	this.checked=true;  
                });  
            } else {// 取消全选  
                $("input[name='assetchecked']:checkbox").each(function(){  
                	this.checked=false;
                });  
            }  
        });
		$("#addassetbtn").click(function() {
			if ($("input[name='assetchecked']:checked").size() == 0) {
				alert("选择不能为空!");
			} else{
				var addIds = new Array();
				$("input[name='assetchecked']:checked").each(function () {
					addIds.push(this.value);
	            });
				//alert(addIds);
				$.ajax({
					//把资产出租状态置为1，可以查询出需要出租的资产
	                url:"addrentasset?status=1",
	                type:'post',
	                data: {assetIds:addIds.join(',')},
	                success:function(data) {
	                	
	                }
	            });
				
				$(".edit").fadeOut(100);
			}
		});
		
	});
	 function fillInEdit(data) {
			$("#asset_id").val(data.no);
			$("#assetname").val(data.assetname);
			$("#buydate").val(data.buydate);
			$("#sources").val(data.sources);
			$("#totalPrice").val(data.totalPrice);
	}
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



	<div class="tools">

		<ul class="toolbar">
			<li class="click" id="addclick"><span><img
					src="images/t01.png" /></span>添加资产</li>

			<li class="click" id="rentclick"><span></span>出租</li>
		</ul>

		<ul class="toolbar1">
			<li><span><img src="images/t05.png" /></span>设置</li>
		</ul>

	</div>

	<div class="edit" id="add">
		<div class="edittop" id="addtop">
			<span>添加要出租资产</span><a></a>
		</div>
		<div style="width: 800px; height: 400px; overflow: scroll;">
			<table class="tablelist" id="TypeTable">
				<thead>
					<tr>
						<th><input id="checkall" type="checkbox" /></th>
						<th>资产编号<i class="sort"><img src="images/px.gif" /></i></th>
						<th>资产类别</th>
						<th>资产名称</th>
						<th>使用部门</th>
						<th>启用日期</th>
						<th>管理人员</th>

					</tr>
				</thead>
				<tbody>
				</tbody>
			</table>

		</div>
		<div class="editbtn">
			<input id="addassetbtn" type="submit" class="sure" value="确定" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
				type="button" class="cancel" value="取消" />
		</div>
		

	</div>

	<!-- 		以下是主頁面的內容-->

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
				
			</tr>
		</thead>
		<tbody>
			<c:forEach var="asset" items="${assets}" varStatus="status">
				<tr>
					<td><input name="rentassetchecked" class="checkbox"
						type="checkbox" value="${asset.id}" /></td>
					<td>${asset.no}</td>
					<td>${asset.type}</td>
					<td>${asset.assetname}</td>
					<td>2013-09-09 15:05</td>
					<td>${asset.usedate}</td>
					<td>已审核</td>
					
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
<!-- 以下内容是出租弹出框 -->


		<div class="edit" id="rent">
			<div class="edittop" id="renttop">
				<span>出租资产</span><a></a>
			</div>

			<div class="formbody">
				
					
					资产名称：<input name="assetname" id="assetname" type="text" class="dfinput" />
					购置日期：<input name="buydate" id="buydate" type="text" class="dfinput" /> 
				         资产来源<input name ="sources"  id="sources" class="dfinput" type="text"/>
				         资产总值：<input name="totalPrice" id="totalPrice" type="text" class="dfinput" /> 
				   <form action="rentupdate" method="post">
				      资产编号：<input name="asset_id" id="asset_id" type="text" class="dfinput" /> 
				          租价：<input name="price" id="price" type="text" class="dfinput"  required="required" placeholder="请填写要出租价格"/> 
				       出租时间：  <input name="rentDate"  type="text" class="datepicker dfinput" required="required" /> 
				       经办人：<input name="operator" id="operator" type="text" class="dfinput"  required="required" placeholder="填写经办人"/> 
				    电话：<input name="phone" id="phone" type="text" class="dfinput"  required="required" placeholder="电话号码"/> 
					<div class="editbtn">
						<input type="submit" class="sure" value="确定" />&nbsp; 
						<input type="button" class="cancel" value="取消" />
					</div>
				</form>
			</div>
		</div>
		
<!-- 		不知为何不加此句不显示 -->
<script type="text/javascript"> $( function() {
    $( ".datepicker" ).datepicker();
} );</script>

	<script type="text/javascript">
		$('.tablelist tbody tr:odd').addClass('odd');
	</script>

</body>

</html>

