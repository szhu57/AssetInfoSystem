$(".loginbtn").click(function() {
	var account = $("#account");
	var password = $("#password");
	if (account.val() == "") {
		account.focus();
		return false;
	}
	if (password.val() == "") {
		password.focus();
		return false;
	}
	 var params = $("#userForm").serializeArray();  
	$.ajax({
		url : "",
		type : "POST",
		
		data : params,
		success : function(msg) {
			
			if (msg == 2) {
				
				$(".link_pwd").html("用户名错误或者密码错误");
				return false;
			} 
			else if (msg == 3) {
				// 正确
				location.href = 'index.jsp';
			}
		},
		error : function(er) {
			console.log(er);
		}
	});

	});	
	