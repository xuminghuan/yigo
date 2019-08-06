function login() {
	var loginName = jQuery("#loginName").val();
	var password = jQuery("#password").val();
	if (loginName == "") {
		showMessage("用户名不能为空");
	} else if (password == "") {
		showMessage("密码不能为空");
	} else {
		var pramArray = jQuery("form").serialize();
		jQuery.ajax({
			"url" : contextPath + "/Login1",
			"type" : "post",
			"data" : pramArray,
			"dataType" : "json",
			"success" : function(data) {
				if (data.status == 1) {
					location = "Home?action=index";
				} else {
					showMessage(data.message);
				}
			}
		});
	}
	
}

