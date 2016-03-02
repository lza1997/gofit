<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="GBK"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="css/nav.css">
	<link rel="stylesheet" href="css/normalize.css">
	<link rel="stylesheet" href="css/main_page_style.css">
	<style>
		#mask_2 {
			background-color: rgba(0,0,0,0.1);
		}
		#log_frame_2 {
			margin-top: -5%;
		}
	</style>
</head>
<body>
	
	<div id="mask_2">
		<div id="log_frame_2">
			<div id="logo_div"><img src="images/logo.png" alt=""></div>
			<form action="update" method="get">
				<input name="username" type="text" id="username" class="Account_number" value="" placeholder="用户名*请以英文和数字构成">
				<input name="email" type="text" id="Account_number_2" class="Account_number" value="" placeholder="邮箱">
				<input name="pwd" type="password" id="Password_2" class="Password" value="" placeholder="密码">
				<div name="cars" id="select">
					北京
				</div>
				<ul class="hide">
					<li>北京</li>
					<li>上海</li>
					<li>广州</li>
					<li>深圳</li>
					<li>无锡</li>
				</ul>
				<input type="submit" id="submit_2" value="修 改" disabled="true">
			</form>
		</div>
	</div>

</body>
<script src="js/jquery.js"></script>
<script src="js/gofit.js"></script>
<script src="js/common.js"></script>
<script>

    $('#mask_2').unbind("click");

</script>
</html>