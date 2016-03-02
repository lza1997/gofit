<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>商品详细信息</title>

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
	function Cartadd(id) {
		location.replace("Cartadd.action?id=" + id+"&buynumber="+document.getElementById("number").value);
	}
//-->
</script>
  </head>
  
  <body>
  <center>
  <s:form>
名称：<s:property value="foodinfo.foodName"/><br/>
 简介：<s:property value="foodinfo.intro"/><br/>
 类型 ：<s:property value="foodinfo.foodtype.typename"/><br/>
  价格：<s:property value="foodinfo.price"/><br/>
销量：<s:property value="foodinfo.salenum"/><br/>
城市：<s:property value="foodinfo.city"/><br/>
上架时间：<s:property value="foodinfo.date"/><br/>
<img  height="300" width="300" src=" <s:property  value="foodinfo.picture" /> "/><br/>	
  <form>
     数量:<input id="number" type="text" name="buynumber" onFocus="this.value=''" value="1">
<a href='javascript:Cartadd(<s:property value="foodinfo.id"/>)' class="text">放入购物车</a>		
</form>	  
  </s:form>

  </center>
  </body>
</html>
