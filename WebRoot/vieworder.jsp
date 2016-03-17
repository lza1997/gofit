<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!doctype html>
<html lang="en">
<head>
<script language="javascript">
<!--

	function foodDetail(id) {
		window.open("Foodview.action?id=" + id);
	}
//-->
</script>
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
	</style>
</head>
<body>
	<div id="nav">
		<span> | 轻体餐互联网第一品牌</span>
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
<!-- 	<div id="mask" class="hide">
		<div id="log_frame">
			<div id="logo_div"><img src="images/logo.png" alt=""></div>
			<form action="/example/html/form_action.asp" method="get">
				<input type="text" id="Account_number" class="Account_number" value="" placeholder="邮箱">
				<input type="password" id="Password" class="Password" value="" placeholder="密码">
				<input type="submit" id="submit" value="登 录" disabled="true">
			</form>
			<p>点此注册新用户</p>
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
 -->
 <h3 id="header">订购成功</h3>
	<h5 id="head_sub">fhghgfhgnfnhdnhgngncvbcgf</h5>
<!-- <hr style="height:1px" /> -->

  <table  border="0" align="center"> 

    <div class="commodity_wrap">
    <s:iterator id="orders" value="orders">
		<div>
				<a href='javascript:foodDetail(<s:property value="foodinfo.id"/>)' class="">
				<img src="<s:property  value="foodinfo.picture" />"/></a>
			    <div class="commodity_name"><span><s:property  value="foodinfo.foodName" /></span><span> X </span><span> <s:property  value="productnum" /></span></div>
			    <div class="commodity_name money"><s:property  value="money" />￥</div>
		</div>  
	</s:iterator> 
	</div>
  </table>

	<div class="clear"></div>

<div class="last_wrap">
  	<div class="price_all">
  		总价 : <span><s:property  value="totalmoney" />￥</span>
  	</div>
  	<div class="last_info">
	         <div>收货地址 :<s:property  value="address" /></div>
	          <div>联系电话:<s:property  value="phonenum" /></div>
  	</div>
  	<div class="bottom"><a href="http://www.miitbeian.gov.cn">苏ICP备15049153号</a> 无锡恩得乐思科技有限公司</div>
</div>

</body>

<script src="js/jquery.js"></script>
<!-- <script src="js/gofit.js"></script> -->
<script src="js/common.js"></script>
<script type='text/javascript'>
    (function(m, ei, q, i, a, j, s) {
        m[a] = m[a] || function() {
            (m[a].a = m[a].a || []).push(arguments)
        };
        j = ei.createElement(q),
            s = ei.getElementsByTagName(q)[0];
        j.async = true;
        j.src = i;
        s.parentNode.insertBefore(j, s)
    })(window, document, 'script', '//eco-api.meiqia.com/dist/meiqia.js', '_MEIQIA');
    _MEIQIA('entId', 1835);


//移除购物车中的商品
$(".commodity_wrap>div div:last-child").click(function(){
	$(this).parent().parent().remove();
})

</script>
</html>