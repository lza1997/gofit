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
		body {
			    background-color: rgba(0,0,0,0.05);
			}
		.one {
			width: 800px;
			margin: 0 auto;
			padding-top: 200px;
		}
		img {
			width: 500px;
		}
		input {
			width: 100px !important;
			margin-left: 0 !important;
			border-radius: 0px !important;
		    border: 1px solid rgba(0, 0, 0,0.4) !important;
		    padding-left: 6px !important;
		}
		input:focus {

		    background-color: #fff !important;
		    color: #000 !important;
		    margin-left: 0;
		}
		.add_to_cart {
			
		}
		.cart_wrap {
			width: 100%;
			height: 258px;
			background-color: #fff;
			position: relative;
		}
		.cart_wrap img {
			position: absolute;
		}
		.cart_wrap div {
			position: absolute;
			left: 520px;
		}
		.cart_wrap form {
			position: absolute;
			left: 520px;
			margin-top: 150px;
		}
		.cart_wrap form a {
			position: absolute;
		    top: 20px;
		    /* right: 20px; */
		    left: 117px;
		    display: block;
		    width: 137px;
		    height: 40px;
		    background-color: #FFA800;
		    text-align: center;
		    line-height: 40px;
		    color: #fff;
		}
		.product_name {
			margin-top: 50px;
		    font-size: 20px;
		    font-weight: 600;
		}
		.price {
			margin-top: 80px;
			font-size: 60px;
			font-weight: 600;
			letter-spacing: 4px;
			color: #ffa800;
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
		.informations {
			width: 800px;
			margin: 0 auto;
			margin-top: 40px;
			padding-top: 20px;
			padding-bottom: 40px;
			background-color: #fff;
		}
		.informations_wrap div {
			line-height: 10px;
			padding-left: 20px;
			padding-top: 20px;
		}
	</style>
</head>
<body>

	<div id="nav">
		<span> | 中国健康食品互联网第一品牌</span>
		<div id="children_page">
			<a href="index.html" >首页</a>
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
			  <s:if test="userinfo!=null">
					<div align="center" class="text">								    
							<!--写出user对象的username属性-->
							<p>user</p><s:property value="userinfo.username"/>
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

<div class="one">
	<div class="cart_wrap">
	  	<img src="<s:property  value="foodinfo.picture" />"/>
		<div class="product_name"><s:property value="foodinfo.foodName"/></div>
		<div class="price"><s:property value="foodinfo.price"/>￥</div>
		<form>
		    <input id="number" type="text" name="buynumber" onFocus="this.value=''" value="数量">
			<a href='javascript:Cartadd(<s:property value="foodinfo.id"/>)' class="add_to_cart">放入购物车</a>	
		</form>	  
	</div>

	<div class="informations">
		<div class="informations_wrap">
		 	 <s:form>
			<div>简介：<s:property value="foodinfo.intro"/></div>
			<div>类型 ：<s:property value="foodinfo.foodtype.typename"/></div>
			<div>销量：<s:property value="foodinfo.salenum"/></div>
			<div>城市：<s:property value="foodinfo.city"/></div>
			<div>上架时间：<s:property value="foodinfo.date"/></div>
		  </s:form>
		</div>
	</div>
</div>
</body>
<script language="javascript">
	//新开一个窗口，显示食物详细信息
	function Cartadd(id) {
		location.replace("Cartadd.action?id=" + id+"&buynumber="+document.getElementById("number").value);
	}
//-->
</script>
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
// </script>
</html>
