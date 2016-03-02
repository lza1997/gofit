<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>登陆</title>
</head>
<body>
<center>
用户登录：<br/><br/>
    <form action="userlogin" method="post">
          用户名:<input type="text" name="username"><br/><br/>
          密码:<input type="password" name="pwd"><br/><br/>
        <input type="submit" value="登陆">
        <input type="reset" value="重置">
    </form>
</center>
</body>
</html>