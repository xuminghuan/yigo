/**
 * 添加商品到购物车
 * 
 * @param entityId
 * @param quantity
 */
function add(entityId, quantity) {
	$.ajax({
		"url" : contextPath + "/Cart1",
		"type" : "POST",
		"data" : "opr=add&entityId=" + entityId + "&quqantity=" + quantity,
		"success" : function(data) {
			var result = eval("(" + data + ")");
			if (result.status == "1") {
				showMessage("操作成功");
				refreshCart1();
			} else {
				showMessage(result.message);
			}
		}
	});
}
/**
 * 购物车
 */
function refreshCart1() {
	$.ajax({
		"url" : contextPath + "/Cart1",
		"type" : "POST",
		"data" : "opr=refreshCart",
		"dataType" : "html",
		"success" : function(result) {
			$("#searchBar").html(result);
		},
		"error" : function() {
			alert("1")
		}
	});
}
/**
 * 结算 加载购物车列表
 */
function settlement1() {
	$.ajax({
		"url" : contextPath + "/Cart1",
		"type" : "POST",
		"data" : "opr=toSettlement1",
		"dataType" : "html",
		"success" : function(result) {
			$("#settlement").html(result);
		},
		"error" : function() {
			alert("");
		}
	});
}
/**
 * 结算 形成预备订单
 */
function settlement2() {
	$.ajax({
		"url" : contextPath + "/Cart1",
		"type" : "POST",
		"data" : "opr=toSettlement2",
		"dataType" : "html",
		"success" : function(result) {
			$("#settlement").html(result);
		},
		"error" : function() {
			alert("");
		}
	});
}
/**
 * 商品数量减
 * 
 * @param obj
 * @param entityId
 */
function sudQuantity(obj, entityId) {
	var quantity = getPCount($(obj)) - 1;
	if (quantity == 0) {
		quantity = 1;
	}
	modifyCart(obj, quantity, entityId);
}
/**
 * 商品数量加
 * 
 * @param obj
 * @param entityId
 * @param stock
 */
function addQuantity(obj, entityId, stock) {
	var quantity = parseInt(getPCount($(obj))) + 1;
	if (stock < quantity) {
		showMessage("商品库存不足");
		return;
	}
	modifyCart(obj, quantity, entityId)
}
/**
 * 数量文本
 * 
 * @param obj
 * @param entityId
 * @param stock
 */
function quantity1(obj, entityId, stock) {
	var quantity = $(obj).val();
	if (quantity == 0) {
		quantity = 1;
	}
	if (stock < quantity) {
		showMessage("商品库存不足");
		return;
	}
	modifyCart(obj, quantity, entityId)
}
/**
 * 修改
 * 
 * @param obj
 * @param quantity
 * @param entityId
 */
function modifyCart(obj, quantity, entityId) {
	$.ajax({
		"url" : contextPath + "/Cart1",
		"type" : "POST",
		"data" : "opr=modifyCary&entityId=" + entityId + "&quantity="
				+ quantity,
		"dataType" : "json",
		"success" : function(result) {
			if (result.status == "1") {
				obj.parent().find(".car_ipt").val(quantity);
				settlement1();
			} else {
				showMessage(result.message);
			}
		},
		"error" : function() {
			alert("错误了");
		}
	});

}
/**
 * 删除购物车的商品
 * 
 * @param entityId
 */
function removeCart(entityId) {
	if (confirm("确定要删除了吗？")) {
		$.ajax({
			"url" : contextPath + "/Cart1",
			"type" : "POST",
			"data" : "opr=modifyCary&entityId=" + entityId + "&quantity=0",
			"dataType" : "json",
			"success" : function(result) {
				if (result.status == "1") {
					showMessage("删除成功");
					settlement1();
				} else {
					showMessage(result.message);
				}
			},
			"error" : function() {
				alert("错误了");
			}
		});
	}

}
/**
 * 生成订单
 */
function settlement3() {
	var $addressId = $("input[name='selectAddress']:checked").val();
	var $newAddress = $("input[name='address']").val();
	var $newremark = $("input[name='remark']").val();
	if ($addressId == null || $addressId == "") {
		showMessage("请选择收货地址");
		return;
	} else if ($addressId == "-1") {
		if ($newAddress.length <= 2 || $newAddress.length >= 50) {
			showMessage("收货地址为2-50个字符");
			return;
		}
	} else {
		$.ajax({
					"url" : contextPath + "/Cart1",
					"type" : "POST",
					"data" : "opr=toSettlement3&selectAddress=" + $addressId
							+ "&newAddress=" + $newAddress + "&newRemark="
							+ $newremark,
					"dataType" : "html",
					"success" : function(result) {
						$("#settlement").html(result);
						refreshCart1();
					},
					"error" : function() {
						alert("错误了");
					}
				});
	}
}
/**
 * 下一页
 * @param currentPage
 * @param categoryId
 */
function pageDown(currentPage,categoryId,pageCount) {
	var current=currentPage+1;
	if(current==pageCount)
	location="${ctx}/Product?action=queryProuductList&categoryId="+categoryId+"&currentPage="+current;
}