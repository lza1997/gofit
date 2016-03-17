<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<title>GOFit Food</title>
	<link rel="stylesheet" href="css/nav.css">
	<link rel="stylesheet" href="css/normalize.css">
	<link rel="stylesheet" href="css/main_page_style.css">
	<style>
		body {
			    overflow: hidden;
			    position: relative;
			}
		.bottom {
			font-size: 0.8em;
			text-align: center;
			opacity: 0.5;
		    margin-top: 60px !important;
		}
	</style>
</head>
<body>
	<div id="nav">
		<span> | 轻体餐互联网第一品牌</span>
		<div id="children_page">
			<a href="GetFoodList" >首页</a>
			<a href="children_pages/lowfood.html" >减脂健康餐</a>
			<a href="children_pages/fruit.html" >营养果蔬汁</a>
			<a href="children_pages/activity.html" >最新活动</a>
			<a href="children_pages/story.html" >品牌故事</a>
		</div>
		<a id="download_button" href="#">
			DOWNLOAD APP
		</a>
		<div id="city_wrap">		
			<a href="#" id="city">北京
				<span></span>
			</a>
			<ul id="city_change">
				<li>上海</li>
				<li>无锡</li>
				<li>深圳</li>
				<li>广州</li>
			</ul>
		</div>
		<div id="user_log">
			<p href="#" class="user_loggin" id="log_in">登录</p>
			<p href="#" class="user_loggin" id="register">注册</p>
			<a href="#" id="shopping"></a>
		</div>
	</div>

	<div id="mask" class="hide">
		<div id="log_frame">
			<div id="logo_div"><img src="images/logo.png" alt=""></div>
			<form action="userlogin" method="get">
				<input name="username" type="text" id="Account_number" class="Account_number" value="" placeholder="用户名">
				<input name="pwd" type="password" id="Password" class="Password" value="" placeholder="密码">
				<input type="submit" id="submit" value="登 录" disabled="true">
			</form>
			<p>点此注册新用户</p>
		</div>
	</div>

	<div id="mask_2" class="hide">
		<div id="log_frame_2">
			<div id="logo_div"><img src="images/logo.png" alt=""></div>
			<form action="register" method="post">
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
				<input type="submit" id="submit_2" value="注 册" disabled="true">
			</form>
			<p>已有账号？点此立即登录</p>
		</div>
	</div>

	<div id="download_wrap">
		<div id="title">
			G O F I T.
		</div>
		<div id="title_2">
			GoFit is a mobile app about gym & food.
		</div>
	</div>

	<div id="page">
		<div id="banner">
			<div id="num">
				<span>1</span>
				<span>2</span>
				<span>3</span>
			</div>
			<div id="back">
				<div id="back_1"></div>
				<div id="back_2"></div>
				<div id="back_3"></div>
			</div>
		</div>

	<div class="bottom"><a href="http://www.miitbeian.gov.cn">苏ICP备15049153号</a> 无锡恩得乐思科技有限公司</div>

<!-- 		<div id="intro">
			<div>
				<p id="intro_1"></p>
				<span  id="intro_2" style="display:none;">Search For Your Need</span>
				<input type="text" id="search">
				<div id="search_button"><img src="images/search.png" alt=""></div>
				<div id="input_hint">Sorry, the database is in maintenance.</div>
			</div>

		</div> -->
	</div>
	
<!-- 	<div id="point">
		<div id="point_1" class="clicked" type="radio"></div>
		<div id="point_2" type="radio"></div>
	</div> -->

</body>
<script src="js/jquery.js"></script>
<script src="js/gofit.js"></script>
<script src="js/common.js"></script>
// <script type='text/javascript'>
//     (function(m, ei, q, i, a, j, s) {
//         m[a] = m[a] || function() {
//             (m[a].a = m[a].a || []).push(arguments)
//         };
//         j = ei.createElement(q),
//             s = ei.getElementsByTagName(q)[0];
//         j.async = true;
//         j.src = i;
//         s.parentNode.insertBefore(j, s)
//     })(window, document, 'script', '//eco-api.meiqia.com/dist/meiqia.js', '_MEIQIA');
//     _MEIQIA('entId', 1835);
// </script>
</html>