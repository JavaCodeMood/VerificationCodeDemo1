function check(){
	if(document.all.name.value.length==0){
		alert("请填写用户名!");
		return false;
	}
	if(document.all.password.value.length==0){
		alert("请填写密码!");
		return false;
	}
	if(document.all.checkes.value.length==0){
		alert("请填写验证码!");
		return false;
	}
	if(document.all.checkes.value!=document.all.checks.value){
		alert("您输入的验证码不正确!");
		return false;
	}

	form1.submit();
	return true;
}

