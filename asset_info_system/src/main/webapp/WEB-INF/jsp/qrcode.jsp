<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
<!-- <script type="text/javascript" src="js/jquery.qrcode.min.js"></script> -->
<script type="text/javascript" src="js/qrcode.js"></script>
<script type="text/javascript" src="js/jquery.qrcode.js"></script>

</head>
<body>

<p>Render in table</p>
<div id="qrcode"></div>



	

</body>


<script type="text/javascript">
	jQuery('#qrcode').qrcode("this plugin is great");
	
</script>

</html>