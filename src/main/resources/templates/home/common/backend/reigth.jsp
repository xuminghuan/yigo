<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

	
   		<div class="m_left">
        	<div class="left_n">管理中心</div>
            <div class="left_m">
                <ul>
                    <li><a href="info" onclick="return false;">个人信息</a></li>
                    <li><a href="xiugai" onclick="return false;">收货地址</a></li>
                    <li><a href="tian" onclick="return false;">我的订单</a></li>
                </ul>
            </div>
            <script type="text/javascript">
			           jQuery(function() {
							jQuery("[href=info]").click(function() {
							jQuery.ajax({
							"url":"user",
							"type":"get",
							"data":"opr=userInfo",
							"dataType":"html",
							"success":function(data){
							jQuery(".m_right").html(data);
							}
							
							});
							});
						});
            </script>
                
        </div>