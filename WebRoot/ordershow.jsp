<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>我的订单</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
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
		.commodity_wrap>div div:nth-child(3) {
			/*cursor: pointer;*/
			position: absolute;
		    top: 150px;
		    left: 190px;
		    opacity: 0.4;
		    width: 50px;
		}
		.commodity_wrap>div div:last-child {
			position: absolute;
			top: 200px;
			color:rgba(0,0,0,0.4);
			font-size: .8em;
			padding-left: 10px;
			background: #fff;
			width: 250px;
			height: 30px;
		}
/*		.commodity_wrap>div div:last-child:hover {
			opacity: 1;
		}*/
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
			padding-bottom: 40px !important;
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
		    margin-top: 150px !important;
		}
	</style>
</head>
<body>
	<div id="nav">
		<span> | 中国健康食品互联网第一品牌</span>
		<div id="children_page">
			<a href="GetFoodList.action" >首页</a>
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


  <h3 id="header">我的订单</h3>
<!-- <hr style="height:1px" /> -->

  <table  border="0" align="center"> 
<s:form action="Cartneworder">
     <s:iterator id="haveorderList" value="haveorderList">
    <div class="commodity_wrap">
		<div>
				<a href='javascript:foodDetail(<s:property value="foodinfo.id"/>)' class="">
				<img src="<s:property  value="foodinfo.picture" />"/></a>
			    <div class="commodity_name"><span><s:property value="foodinfo.foodName" /></span><span> X </span><span><s:property  value="productnum" /></span></div>
			    <div class="commodity_name money"><s:property  value="money" />￥</div>
			    <div><s:property  value="status" /></div>
			    <div>订单号： <span><s:property  value="ordernum" /></span></div>
		</div>
	</div>
	</s:iterator> 
  </s:form>
  </table>
	<div class="clear"></div>
<!-- 
<div class="last_wrap">
  	<div class="price_all">
  		总价 : <span>99￥</span><s:property  value="totalmoney" />
  	</div>
  	<div class="last_info">
	  	<form action="Cartneworder">
	         <div>收货地址 <input type="text" name="address"></div>
	          <div>联系电话 <input type="text" name="phonenum"></div>
	        <input class="jiezhang" type="submit" onClick="emulatePay()" value="结账">  
	    </form>
  	</div>


</div> -->


  	<div class="bottom">苏ICP备15049153号 无锡恩得乐思科技有限公司</div>

</body>
<script language="javascript">

	function emulatePay() {
		alert("fee paid!");
		submit();
	}
	function foodDetail(id) {
		window.open("Foodview.action?id=" + id);
	}
	function cartremove(id) {
		location.replace("Cartremove.action?id=" + id);
	}

</script>
<script src="js/jquery.js"></script>
<!-- <script src="js/gofit.js"></script> -->
<script src="js/common.js"></script>
</html>
