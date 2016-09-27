

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
		
		$(".datepicker").datepicker({
			inline: true
		});
		
		$(".datepicker").datepicker('option', {dateFormat: 'yy-mm-dd'});
		
		$("#addclick").click(function() {
			fillAddSelect();
			$("#add").fadeIn(200);
		});

		$("#addtop a").click(function() {
			$("#add").fadeOut(200);
		});
		
		$("#editclick").click(function() {
			if ($("input[name='assetchecked']:checked").size() != 1) {
				alert("请选中一条记录!");
			} else {
				fillEditSelect();
				$.ajax({
	                url:"asset?assetId=" + $("input[name='assetchecked']:checked")[0].value,
	                type:'get',
	                success:function(data) {
	                	fillInEdit(data);
	                }
	            });
				$("#edit").fadeIn(200);
			}
		});

		$("#edittop a").click(function() {
			$("#edit").fadeOut(200);
		});
		
		$("#delclick").click(function() {
			if ($("input[name='assetchecked']:checked").size() == 0) {
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
			$("input[name='assetchecked']:checked").each(function () {
				delIds.push(this.value);
            });
			//alert(delIds);
			$.ajax({
                url:"assetbatchdelete",
                type:'post',
                data: {assetIds:delIds.join(',')},
                success:function(data) {
                	 location.reload();
                }
            });
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
	});
	
	function fillInEdit(data) {
		$("#id").val(data.id);
		$("#no").val(data.no);
		$("#assetname").val(data.assetname);
		$("#edittype").val(data.type);
		$("#edittype").trigger("change");
		$("#editsubtype").val(data.subType);
		$("#model").val(data.model);
		$("#unit").val(data.unit);
		$("#department").val(data.department);
		$("#location").val(data.location);
		$("#responsiblePerson").val(data.responsiblePerson);
		$("#useStatus").val(data.useStatus);
		$("#sources").val(data.sources);
		$("#buildarea").val(data.buildarea);
		$("#usearea").val(data.usearea);
		$("#buildstatus").val(data.buildstatus);
		$("#manufacturer").val(data.manufacturer);
		$("#manuaddress").val(data.manuaddress);
		$("#manuphone").val(data.manuphone);
		$("#note").val(data.note);
		$("#buydate").val(data.buydate);
		$("#regdate").val(data.regdate);
		$("#usedate").val(data.usedate);
		$("#operator").val(data.operator);
		$("#count").val(data.count);
		$("#unitPrice").val(data.unitPrice);
		$("#totalPrice").val(data.totalPrice);
		$("#availYears").val(data.availYears);
		$("#depreType").val(data.depreType);
		$("#netSalvage").val(data.netSalvage);
		$("#monthDepre").val(data.monthDepre);
		$("#totalDepre").val(data.totalDepre);
		$("#netWorth").val(data.netWorth);
	}
	
	function fillAddSelect() {
		$.ajax({
            url:"assettypejson",
            type:'get',
            success:function(data) {
				$("#addtype").empty();
				$("#addsubtype").empty();
				for (var i=0; i<data.length; i++) {
		    		$("#addtype").append("<option value=" + data[i].type + ">" + data[i].type + "</option>");
		    	}
				
				var s = data[0].subType.split(";");
				for (var i=0; i<s.length; i++) {
					$("#addsubtype").append("<option value=" + s[i] + ">" + s[i] + "</option>");
				}
				
				$("#addtype").change(function() {
					$("#addsubtype").empty();
					for (var i=0; i<data.length; i++) {
						if($("#addtype").val() == data[i].type) {
							var ss = data[i].subType.split(";");
							for (var j=0; j<ss.length; j++) {
								$("#addsubtype").append("<option value=" + ss[j] + ">" + ss[j] + "</option>");
							}
						}
					}
				});
            }
        });
	}
		function fillEditSelect() {
			$.ajax({
	            url:"assettypejson",
	            type:'get',
	            success:function(data) {
					$("#edittype").empty();
					$("#editsubtype").empty();
					for (var i=0; i<data.length; i++) {
			    		$("#edittype").append("<option value='" + data[i].type + "'>" + data[i].type + "</option>");
			    	}
					
					var s = data[0].subType.split(";");
					for (var i=0; i<s.length; i++) {
						$("#editsubtype").append("<option value=" + s[i] + ">" + s[i] + "</option>");
					}
					
					$("#edittype").change(function() {
						$("#editsubtype").empty();
						for (var i=0; i<data.length; i++) {
							if($("#edittype").val() == data[i].type) {
								var ss = data[i].subType.split(";");
								for (var j=0; j<ss.length; j++) {
									$("#editsubtype").append("<option value=" + ss[j] + ">" + ss[j] + "</option>");
								}
							}
						}
					});
	            }
	        });
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

	<div class="rightinfo">

		<div class="tools">

			<ul class="toolbar">
				<li class="click" id="addclick"><span><img src="images/t01.png" /></span>添加</li>
				<li class="click" id="editclick"><span><img src="images/t02.png" /></span>修改</li>
				<li class="click" id="delclick"><span><img src="images/t03.png" /></span>删除</li>
				<li><span><img src="images/t04.png" /></span>统计</li>
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
					<th>管理人员</th>
					<th>管理人员</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="asset" items="${assets}" varStatus="status">
					<tr>
						<td><input name="assetchecked" class="checkbox" type="checkbox" value="${asset.id}" /></td>
						<td>${asset.no}</td>
						<td>${asset.type}</td>
						<td>${asset.assetname}</td>
						<td>2013-09-09 15:05</td>
						<td>已审核</td>
						<td><a href="#" class="tablelink">查看</a> <a href="assetdelete?assetId=${asset.id}" class="tablelink"> 删除</a></td>
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
				<span>添加资产</span><a></a>
			</div>

			<div class="formbody">
				<form action="assetadd" method="post">
					资产编号：<input name="no" type="text" class="dfinput" /> 
					资产大类：<select name="type" id="addtype" class="select1"></select>
					详细类别：<select name="subType" id="addsubtype" class="select1"></select>
					资产名称：<input name="assetname" type="text" class="dfinput" />
					规格型号：<input name="model" type="text" class="dfinput" />
					计量单位：<select name="unit" class="select1" ><option value="1.1">1</option><option value="2.1">2</option></select> 
					使用部门：<select name="department" class="select1"><option value="1">1</option><option value="2">2</option></select> 
					所在位置：<input name="location" type="text" class="dfinput" /> 
					管理人员：<input name="responsiblePerson" type="text" class="dfinput" />  
					资产状态：<select class="select1" name="useStatus" ><c:forEach var="assetStatus" items="${assetStatus}" varStatus="status">
						<option value="${assetStatus.status}">${assetStatus.status}</option>
					</c:forEach></select>
				            资产来源：<select class="select1" name="sources" ><c:forEach var="assetSource" items="${assetSource}" varStatus="status">
						<option value="${assetSource.sources}">${assetSource.sources}</option>
					</c:forEach></select>
					建设面积：<input name="buildarea" type="text" class="dfinput" />
					使用面积：<input name="usearea" type="text" class="dfinput" />  
					建设状态：<select name="buildstatus" class="select1" ><option value="1">1</option><option value="2">2</option></select>
					供应商：<input name="manufacturer" type="text" class="dfinput" /> 
					供应商地址：<input name="manuaddress" type="text" class="dfinput" />
					供应商电话：<input name="manuphone" type="text"	class="dfinput" /> 
					备注：<input name="note" type="text" class="dfinput" /> 
				            购置日期：<input name="buydate" type="text" class="dfinput datepicker" /> 
					登记日期：<input name="regdate" type="text" class="dfinput datepicker" /> 
					启用日期：<input name="usedate" type="text" class="dfinput datepicker" /> 
					经办人：<input name="operator" type="text" class="dfinput" />
					资产数量：<input name="count" type="text" class="dfinput" /> 
					资产单价：<input name="unitPrice" type="text" class="dfinput" /> 
					资产总值：<input name="totalPrice" type="text" class="dfinput" /> 
					使用年限：<input name="availYears" type="text" class="dfinput" /> 
					折旧方式：<select name="depreType" class="select1" ><option value="1">UI设计师</option><option value="2">交互设计师</option></select> 
					净残值率：<input name="netSalvage" type="text" class="dfinput" /> 
					月折旧额：<input name="monthDepre" type="text" class="dfinput" />
					累计折旧额：<input name="totalDepre" type="text" class="dfinput" /> 
					净值：<input name="netWorth" type="text" class="dfinput" />
					<div class="editbtn">
						<input type="submit" class="sure" value="确定" />&nbsp; 
						<input type="button" class="cancel" value="取消" />
					</div>
				</form>
			</div>
		</div>
		
		<div class="edit" id="edit">
			<div class="edittop" id="edittop">
				<span>修改资产</span><a></a>
			</div>

			<div class="formbody">
				<form action="assetupdate" method="post">
					<input name="id" id="id" type="hidden" class="dfinput" /> 
					资产编号：<input name="no" id="no" type="text" class="dfinput" /> 
					资产大类：<select name="type" id="edittype" class="select1"></select>
					详细类别：<select name="subType" id="editsubtype" class="select1"></select>
					资产名称：<input name="assetname" id="assetname" type="text" class="dfinput" />
					规格型号：<input name="model" id="model" type="text" class="dfinput" />
					计量单位：<select name="unit" id="unit" class="select1" ><option value="1.1">1</option><option value="2.1">2</option></select> 
					使用部门：<select name="department" id="department" class="select1"><option value="1">1</option><option value="2">2</option></select> 
					所在位置：<input name="location" id="location" type="text" class="dfinput"/> 
					管理人员：<input name="responsiblePerson" id="responsiblePerson" type="text" class="dfinput" />  
					资产状态：<select id="useStatus" class="select1" name="useStatus" ><c:forEach var="assetStatus" items="${assetStatus}" varStatus="status">
						<option value="${assetStatus.status}">${assetStatus.status}</option>
					</c:forEach></select>
				            资产来源：<select id="sources" class="select1" name="sources" ><c:forEach var="assetSource" items="${assetSource}" varStatus="status">
						<option value="${assetSource.sources}">${assetSource.sources}</option>
					</c:forEach></select>
					建设面积：<input name="buildarea" id="buildarea" type="text" class="dfinput" />
					使用面积：<input name="usearea" id="usearea" type="text" class="dfinput" />
					建设状态：<select name="buildstatus" id="buildstatus" class="select1" ><option value="1">1</option><option value="2">2</option></select>
					供应商：<input name="manufacturer" id="manufacturer" type="text" class="dfinput" /> 
					供应商地址：<input name="manuaddress" id="manuaddress" type="text" class="dfinput" />
					供应商电话：<input name="manuphone" id="manuphone" type="text"	class="dfinput" /> 
					备注：<input name="note" id="note" type="text" class="dfinput" /> 
				            购置日期：<input name="buydate" id="buydate" type="text" class="dfinput" /> 
					登记日期：<input name="regdate" id="regdate" type="text" class="dfinput" /> 
					启用日期：<input name="usedate" id="usedate" type="text" class="dfinput" /> 
					经办人：<input name="operator" id="operator" type="text" class="dfinput" />
					资产数量：<input name="count" id="count" type="text" class="dfinput" /> 
					资产单价：<input name="unitPrice" id="unitPrice" type="text" class="dfinput" /> 
					资产总值：<input name="totalPrice" id="totalPrice" type="text" class="dfinput" /> 
					使用年限：<input name="availYears" id="availYears" type="text" class="dfinput" /> 
					折旧方式：<select name="depreType" id="depreType" class="select1" ><option value="1">UI设计师</option><option value="2">交互设计师</option></select> 
					净残值率：<input name="netSalvage" id="netSalvage" type="text" class="dfinput" /> 
					月折旧额：<input name="monthDepre" id="monthDepre" type="text" class="dfinput" />
					累计折旧额：<input name="totalDepre" id="totalDepre" type="text" class="dfinput" /> 
					净值：<input name="netWorth" id="netWorth" type="text" class="dfinput" />
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

