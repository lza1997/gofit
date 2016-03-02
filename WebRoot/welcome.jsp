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
<script language="javascript">
	//新开一个窗口，显示食物详细信息
	function foodDetail(id) {
		window.open("Foodview.action?id=" + id);
	}
//-->
</script>
  </head>
  
  <body>
  <center>
  商品列表
<hr style="height:1pt" width="90%" />
  <table  border="0" align="center"> 
     <s:iterator id="foodinfos" value="foodinfos">
         <tr>
      <td> <a href='javascript:foodDetail(<s:property value="id"/>)' class="text"><s:property  value="foodName" /> </a></td>
		<td> <img  height="100" width="100" src=" <s:property  value="picture" /> "/></td>
    	</tr>
</s:iterator> 
  </table>
  <s:if test="userinfo!=null">
	<div align="center" class="text">									    
		<!--写出user对象的username属性-->
		欢迎光临:<s:property value="userinfo.username" />
		<!--“修改资料”链接-->
		<a href="modify.jsp">修改资料</a>
		<!--“注销”链接-->
		<a href="<s:url action="Logout"/>">注销</a>
		<a href="<s:url action="Cartview"/>">购物车</a>
		<a href="<s:url action="Cartordershow"/>">我的订单</a>
	</div>
	</s:if>
  </center>
  </body>
</html>
