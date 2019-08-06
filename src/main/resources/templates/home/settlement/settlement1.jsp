<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>易买网</title>

</head>
<body>  

<!--End Menu End--> 
<div class="i_bg">  
    <div class="content mar_20">
    	<img src="${ctx}/statics/images/img1.jpg" />        
    </div>
    
    <!--Begin 第一步：查看购物车 Begin -->
    <div class="content mar_20">
    	<table border="0" class="car_tab" style="width:1200px; margin-bottom:50px;" cellspacing="0" cellpadding="0">
          <tr>
            <td class="car_th" width="490">商品名称</td>
            <td class="car_th" width="140">单价</td>
            <td class="car_th" width="150">购买数量</td>
            <td class="car_th" width="130">小计</td>
            <td class="car_th" width="150">操作</td>
          </tr>
          <c:forEach items="${sessionScope.cart.sItems}" var="cart">
          <tr>
            <td>
            	<div class="c_s_img"><img src="${ctx}/files/${cart.product.fileName}" width="73" height="73" /></div>
                ${cart.product.name}
            </td>
            <td align="center">${cart.product.price}</td>
            <td align="center">
            	<div class="c_num">
                    <input type="button" value="" onclick="sudQuantity(jq(this),'${cart.product.id}');" class="car_btn_1" />
                	<input type="text" value="${cart.quantity}" name="" class="car_ipt" onblur="quantity1(jq(this),'${cart.product.id}','${cart.product.stock}');" />  
                    <input type="button" value="" onclick="addQuantity(jq(this),'${cart.product.id}','${cart.product.stock}');" class="car_btn_2" />
                </div>
            </td>
            <td align="center" style="color:#ff4e00;">￥${cart.cost}</td>
            <td align="center"><a onclick="removeCart('${cart.product.id}');">删除</a>
          </tr>
          </c:forEach>
           <tr height="70">
          	<td colspan="6" style="font-family:'Microsoft YaHei'; border-bottom:0;">
            <!-- 	<label class="r_rad"><input type="checkbox" name="clear" checked="checked" /></label><label class="r_txt">清空购物车</label> -->
                <span class="fr">商品总价：<b style="font-size:22px; color:#ff4e00;">￥${cart.sum}</b></span>
            </td>
          </tr>
          <tr valign="top" height="150">
          	<td colspan="6" align="right">
            	<a href="${ctx}/Home?action=index"><img src="${ctx}/statics/images/buy1.gif" /></a>&nbsp; &nbsp; 
            	<c:if test="${sessionScope.cart!=null && sessionScope.cart.sum>0}">
            	<a href="javascript:void();" onclick="settlement2()"><img src="${ctx}/statics/images/buy2.gif" /></a>
            </c:if>
            </td>
          </tr>
        </table>
        
    </div>
	<!--End 第一步：查看购物车 End--> 
    
    
    <!--Begin 弹出层-删除商品 Begin-->
    
    <!--End 弹出层-删除商品 End-->
    
    
  
</div>

</body>

</html>
