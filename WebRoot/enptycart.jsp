<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>Gofit</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
  <center>
 我的购物车
 <s:if test="userinfo!=null">
	<div align="center" class="text">									    
		<!--写出user对象的username属性-->
		欢迎光临:<s:property value="userinfo.username" />
		<!--“注销”链接-->
		<a href="<s:url action="Logout"/>">注销</a>
		  <a href="/gofit/GetFoodList">返回首页</a>
	</div>
	</s:if>
<hr style="height:1pt" width="90%" />
	您还没买任何东西，快去首页看看吧！
  </center>
  </body>
</html>
