<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改电影就记录</title>

<script type="text/javascript">
	function check(form) {
		if(document.forms.loginForm.userName.value==""){
			alert("请输入用户名！");
			document.forms.loginForm.userName.focus();
			return false;
		}

	}
</script>
</head>
<body>
<table border="1" cellspacing="0" cellpadding="5" bordercolor="silver" align="center">
		
		
	
	
		<tr>
			<td colspan="4" align="center" bgcolor="#E8E8E8">添加电影记录</td>
		</tr>
		<tr>
			<td>标题：</td>
			<td>简介：</td>
			<td>语言：</td>
		</tr>
		<tr>
		<input type="text" name="title" />
		<input type="text" name="description" />
		<input type="text" name="language" />
		
		</tr>
		<tr>
			<td colspan="4" align="center">
				<input type="submit" name="submit" onclick="return check(this);"/>
				<input type="reset" name="reset" /></td>
		</tr>	

	
	</table>
</body>
</html>