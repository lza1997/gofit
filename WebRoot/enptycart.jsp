<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
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
		html,body {
			background-color: #F7F7F7;
		}
		li {
			list-style: none;
		    line-height: 35px;
		}
		a {
			text-decoration: none;
			color: rgba(0,0,0,0.5);
		}
		a:hover {
			color: rgba(0,0,0,1);
		}
		#header {
			display: block;
			margin: 4px auto;
			padding-top: 150px;
			width: 100%;
			text-align: center;
		}
		#head_sub {
			display: block;
			margin: 16px auto;
			width: 100%;
			text-align: center;
			opacity: 0.6;
		}
		hr {
			margin: 0 auto;
			opacity: 0.2;
			width: 900px;
		}
		.commodity_wrap {
			width: 900px;
			margin: 2% auto;
		}
		.commodity_wrap>div {
			width: 250px;
			position: relative;
			/*text-align: center;*/
		    float: left;
	        margin: 0 25px;
		    display: inline-block;
		}
		.commodity_wrap>div img {
			display: block;
			padding-bottom: 14px;
			width: 250px;
			height: 150px;
			background-color: #fff;
		}
		.commodity_wrap>div div:last-child {
			cursor: pointer;
			position: absolute;
		    top: 150px;
		    left: 204px;
		    opacity: 0.4;
		}
		.commodity_wrap>div div:last-child:hover {
			opacity: 1;
		}
		.commodity_name {
			width: 250px;
			display: block;
			padding-left: 10px;
			padding-bottom: 4px;
			color: rgb(231, 160, 57);
			background-color: #fff;
		}
		.money {
			color: rgba(0,0,0,1) !important;
			padding-left: 10px;
			font-size: 0.8em;
			margin-bottom: 20px;
			padding-bottom: 14px;
		}
		.clear {
		    clear: both;
		    float: none;
		    height: 0;
		    margin: 0;
		    padding: 0;
		    width: 0;
		}
		.last_wrap {
			width: 100%;
			background-color: #FFF;
			margin-top: 40px;
		    height: 280px;
		}
		.last_wrap div {
			width: 800px;
			margin: 0 auto;
		}
		input {
			display: inline;
			width: 300px;
		}
		.last_info {
			position: relative;
		}
		.last_info div {
			width: 500px;
			margin: 10px auto;
		}
		.price_all {
			margin: 30px auto !important;
		    padding-top: 13px;
			text-align: center;
		}
		.price_all>span {
			font-size: 40px;
			color: rgb(231, 160, 57);
		}
		.jiezhang {
			position: absolute;
			top: -22px;
		    right: 116px;
		    display: block;
		    color: rgba(0,0,0,0.3);
		    background-color: #E7A039;
		    color: #fff;
		    width: 150px;
		    height: 57px;
		    border-radius: 5px;
		    /* margin: 20px auto; */
	        border: 2px solid rgb(231, 160, 57);
		    padding-left: 0px;
		}
		.bottom {
			font-size: 0.8em;
			text-align: center;
			opacity: 0.5;
		    margin-top: 60px !important;
		}
		.content {
			width: 100%;
		}
		.content>div {
			width: 100%;
			text-align: center;
			padding-top: 30px;
			font-size: 1.1em;
			font-weight: 600;
			letter-spacing: 2px;
			opacity: .4;
		}
		.content>.svg1 {
			display: block;
			margin: 0 auto;
			width: 150px;
			opacity: 0.3;
			padding-top: 14%;

		}
	</style>
</head>
<body>
	<div id="nav">
		<span> | 中国健康食品互联网第一品牌</span>
		<div id="children_page">
			<a href="GetFoodListall" >首页</a>
			<a href="GetFoodListlowfood" >减脂健康餐</a>
			<a href="GetFoodListfruit" >营养果蔬汁</a>
			<a href="GetFoodListactivity" >最新活动</a>
			<a href="GetFoodListstory" >品牌故事</a>
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
			  <s:if test="userinfo!=null">
					<div align="center" class="text">								    
							<!--写出user对象的username属性-->
							<p><s:property value="userinfo.username"/></p>
							<!--“修改资料”链接-->
						<ul style="">	
							<!--“注销”链接-->
							<li><a href="<s:url action='Cartordershow'/>">我的订单</a></li>
							<li><a href="modify.jsp">修改资料</a></li>
							<li><a href="<s:url action='Logout'/>">注销</a></li>
						</ul>
					</div>
				</s:if>
			<a href="<s:url action='Cartview'/>" id="shopping"></a>
		</div>
	</div>

	<div id="mask_2" class="hide">
		<div id="log_frame_2">
			<div id="logo_div"><img src="images/logo.png" alt=""></div>
			<form action="/example/html/form_action.asp" method="get">
				<input type="text" id="username" class="Account_number" value="" placeholder="用户名*请以英文和数字构成">
				<input type="text" id="Account_number_2" class="Account_number" value="" placeholder="邮箱">
				<input type="password" id="Password_2" class="Password" value="" placeholder="密码">
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
				<input type="submit" id="submit_2" value="注 册" disabled="true">
			</form>
			<p>已有账号？点此立即登录</p>
		</div>
	</div>


	<div class="content">
		<svg class="svg1" version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
			 viewBox="0 0 612 612" style="enable-background:new 0 0 612 612;" xml:space="preserve">
			<g>
			<g>
				<g>
					<path d="M608.126,124.457c-3.239-3.945-8.075-6.233-13.179-6.233H107.539L91.367,34.782c-1.555-8.018-8.577-13.81-16.743-13.81
						h-57.57C7.633,20.972,0,28.608,0,38.026s7.633,17.054,17.054,17.054h43.501l73.439,384.296
						c1.435,8.155,8.519,14.101,16.796,14.101h60.242c-32.342,5.858-56.956,34.204-56.956,68.21c0,38.233,31.106,69.34,69.34,69.34
						c38.233,0,69.336-31.106,69.336-69.34c0-34.005-24.609-62.351-56.953-68.21h221.5c-32.344,5.858-56.959,34.204-56.959,68.21
						c0,38.233,31.109,69.34,69.344,69.34c38.233,0,69.339-31.106,69.339-69.34c0-34.005-24.612-62.351-56.953-68.21h51.932
						c9.418,0,17.054-7.636,17.054-17.054c0-9.42-7.636-17.054-17.054-17.054H165.109l-5.224-29.721h387.974
						c8.142,0,15.144-5.752,16.73-13.736l47.086-237.314C612.667,133.591,611.365,128.403,608.126,124.457z M504.917,521.687
						c0,19.426-15.805,35.23-35.23,35.23c-19.428,0-35.236-15.804-35.236-35.23c0-19.426,15.808-35.23,35.236-35.23
						C489.112,486.458,504.917,502.26,504.917,521.687z M258.646,521.687c0,19.426-15.802,35.23-35.227,35.23
						c-19.428,0-35.233-15.804-35.233-35.23c0-19.426,15.805-35.23,35.233-35.23C242.842,486.458,258.646,502.26,258.646,521.687z
						 M153.539,355.539l-23.13-119.328h64.366l19.605,119.328H153.539z M327.099,355.539h-78.154l-19.605-119.328h97.76V355.539z
						 M440.591,355.539h-79.384V236.212h96.513L440.591,355.539z M533.857,355.539H475.05l17.13-119.328h65.352L533.857,355.539z
						 M564.299,202.104h-440.5l-9.648-49.77h460.025L564.299,202.104z"/>
				</g>
			</g>
			</g>
		</svg>
		<div>您还没买任何东西，快去首页看看吧！</div>
	</div>





</body>

<script src="js/jquery.js"></script>
<!-- <script src="js/gofit.js"></script> -->
<script src="js/common.js"></script>
<script type='text/javascript'>
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


//移除购物车中的商品
// $(".commodity_wrap>div div:last-child").click(function(){
// 	$(this).parent().parent().remove();
// })

</script>
</html>
