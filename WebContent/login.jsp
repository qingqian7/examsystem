<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<meta http-equiv="Pragma" content="no-cache"> 
<meta http-equiv="Cache-Control" content="no-cache"> 
<meta http-equiv="Expires" content="0"> 
<title>物业信息管理系统</title>
<link href="login.css" rel="stylesheet" type="text/css" />
</head>
<script src="frameworks/jquery-2.1.4/jquery.min.js"></script>
<script type="text/javascript">
function isIdUsed11()
{
	if(userName==""||passWord=="")
	{
		alert("请输入用户名和密码");
		return false;
	}
	
}
</script>
<body>
<div class="login_box">
      <div class="login_l_img"><img src="/examsystem/theme/1/images/login-img.png" /></div>
      <div class="login">
          <div class="login_logo"><a href="#"><img src="/examsystem/theme/1/images/login_logo.png" /></a></div>
          <div class="login_name">
               <p>考试管理登录</p>
          </div>
          <form action="login.action">
              <input id="username" name="user.name" type="text"  value="用户名" onfocus="this.value=''" onblur="if(this.value==''){this.value='用户名'}">
              <span id="password_text" onclick="this.style.display='none';document.getElementById('password').style.display='block';document.getElementById('password').focus().select();" >密码</span>
			  <input name="user.password" type="password" id="password" style="display:none;" onblur="if(this.value==''){document.getElementById('password_text').style.display='block';this.style.display='none'};"/>
              <input value="登录" style="width:100%;" type="submit" onClick="isIdUsed11();">
          </form>
      </div>
      <div class="copyright">liuyun</div>
</div>
</body>
</html>
