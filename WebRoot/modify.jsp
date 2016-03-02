<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="GBK"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
<center>
		 	<form action="update">
	修改信息：<br/><br/>
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
   	<input type="submit" value="修改">
        <input type="reset" value="重置">
	</form>
</center>
</body>
</html>
