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
<!--
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
//-->
</script>
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
<s:form action="Cartneworder">
  <table  border="0" align="center"> 
     <s:iterator id="orders" value="orders">
         <tr>
      <td> <a href='javascript:foodDetail(<s:property value="foodinfo.id"/>)' class="text"><s:property  value="foodinfo.foodName" /> </a></td>
		<td> <img  height="100" width="100" src=" <s:property  value="foodinfo.picture" /> "/></td>
		       <td> <s:property  value="productnum" />* <s:property  value="foodinfo.price" />=<s:property  value="money" /></td>
			<td><a href='javascript:cartremove(<s:property value="foodinfo.id"/>)'>删除</a></td>
    	</tr>
</s:iterator> 
 </table>
  </s:form>
    <hr style="height:1pt" width="90%" />
  	总价<s:property  value="totalmoney" /><br/>
  	<form action="Cartneworder">
         收获地址:<input type="text" name="address"><br/><br/>
          联系电话:<input type="password" name="phonenum"><br/><br/>
        <input type="submit" onclick="emulatePay()" value="结账">  
        </form>
  </center>
  </body>
</html>
