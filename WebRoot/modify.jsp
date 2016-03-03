<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="GBK"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>用户资料修改</title>
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
	
	<div id="mask_2" class="">
		<div id="log_frame_2">
			<div id="logo_div"><img src="images/logo.png" alt=""></div>
			<form action="update" method="post">
				<input  name="username" type="text" id="username" class="Account_number" value="" placeholder="用户名*请以英文和数字构成">
				<input name="email" type="text" id="Account_number_2" class="Account_number" value="" placeholder="邮箱">
				<input name="pwd" type="password" id="Password_2" class="Password" value="" placeholder="密码">
				<select name="city" class="hide" id="select">
					<option value="北京">北京</option>
					<option value="上海">上海</option>
					<option value="广州">广州</option>
					<option value="深圳">深圳</option>
					<option value="无锡">无锡</option>
				</select>
				<input type="submit" id="submit_2" value="修改" disabled="true">
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