<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

</head>
<body>  
<!--Begin Header Begin-->

<!--End Header End--> 
<!--Begin Menu Begin-->

<!--End Menu End--> 
<div class="i_bg">  
    <div class="content mar_20">
    	<img src="${ctx}/statics/images/img2.jpg" />        
    </div>
    
    <!--Begin 第二步：确认订单信息 Begin -->
    <div class="content mar_20">
    	<div class="two_bg">
        	<div class="two_t">
            	<span class="fr"><a href="#">修改</a></span>商品列表
            </div>
            <table border="0" class="car_tab" style="width:1110px;" cellspacing="0" cellpadding="0">
              <tr>
                <td class="car_th" width="550">商品名称</td>
                <td class="car_th" width="140">单价</td>
                <td class="car_th" width="150">购买数量</td>
                <td class="car_th" width="130">小计</td>
              </tr>
               <c:forEach items="${sessionScope.cart.sItems}" var="cart">
          <tr>
            <td>
            	<div class="c_s_img"><img src="${ctx}/files/${cart.product.fileName}" width="73" height="73" /></div>
                ${cart.product.name}
            </td>
            <td align="center">${cart.product.price}</td>
            <td align="center">${cart.quantity}</td>
            <td align="center" style="color:#ff4e00;">￥${cart.cost}</td>
          </tr>
          </c:forEach>
            </table>
            
            <div class="two_t">
            	收货人信息
            </div>
            <table border="0" class="peo_tab" style="width:1110px;" cellspacing="0" cellpadding="0">
              <tr>
                <td class="p_td" width="160">用户名称</td>
                <td width="395">${login.userName}</td>
                <td class="p_td" width="160">登陆名称</td>
                <td width="395">${login.loginName}</td>
              </tr>
              <tr>
                <td class="p_td">手机</td>
                <td>${login.mobile}</td>
                <td class="p_td">电子邮箱</td>
                <td>${login.email}</td>
              </tr>
             
            </table>

            
            <div class="two_t">
            	配送方式
            </div>
            <table border="0" class="car_tab" style="width:1110px;" cellspacing="0" cellpadding="0">
               <c:forEach items="${uAddresses}" var="uList" varStatus="num">
              <tr>
              <td class="p_td" width="160">
              <c:if test="${empty uList.remark}">
            	  地址:${num.count} 
              </c:if>
               <c:if test="${not empty uList.remark}">
              ${uList.remark} 
              </c:if>
              <input type="radio" name="selectAddress" <c:if test="${uList.isDefault==1}">checked</c:if> value="${uList.id}"/>
				</td>
               <td width="395">
               ${uList.address}
                </td>
              </tr>
              </c:forEach>
              <tr>
              <td>新地址 <input type="radio" name="selectAddress" value="-1"/></td>
              <td>
              	地址&nbsp;<input type="text" name="address" value="-1" class="add_ipt" />
            	 &nbsp; &nbsp;  备注 &nbsp;<input type="text" name="remark" class="add_ipt"/>
              </td>
              </tr>
            </table> 
            <table border="0" style="width:900px; margin-top:20px;" cellspacing="0" cellpadding="0">
              
              <tr height="70">
                <td align="right">
                	<b style="font-size:14px;">应付款金额：<span style="font-size:22px; color:#ff4e00;">￥${cart.sum}</span></b>
                </td>
              </tr>
              <tr height="70">
                <td align="right"><a href="javascript:void();" onclick="settlement3();"><img src="${ctx}/statics/images/btn_sure.gif" /></a></td>
              </tr>
            </table>

            
        	
        </div>
    </div>
	<!--End 第二步：确认订单信息 End-->
    
    
    <!--Begin Footer Begin -->

    <!--End Footer End -->    
</div>

</body>
</html>
