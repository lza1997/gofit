<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  <link rel="shortcut icon" href="images/logo-ico.ico">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
  <center>
	<form action="register">
	用户注册：<br/><br/>
	  用户名<input type="text" name="username">(请以英文和数字构成)<br/><br/>
          密码<input type="password" name="pwd"><br/><br/>
   	邮箱<input type="text" name="email"><br/><br/>
   	地址
   	<select name="city"> 
<option value="北京">北京</option> 
<option value="广州">广州</option> 
<option value="无锡">无锡</option> 
<option value="深圳">深圳</option> 
<option value="上海">上海</option> 
</select> 
   	<input type="text" name="address"><br/><br/>
   	<input type="submit" value="注册">
        <input type="reset" value="重置">
	</form>
  </center>
  </body>
</html>
