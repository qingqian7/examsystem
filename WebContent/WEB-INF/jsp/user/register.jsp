<%--
  Created by IntelliJ IDEA.
  User: shuai
  Date: 2017/8/29
  Time: 22:52
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>关于</title>
    <style>
        .about {
            margin-top: 120px;
            text-align: center;
            position: absolute;
            left: 50%;
            width: 600px;
            margin-left: -300px;
        }

        .name_list {
            font-size: 20px;
            line-height: 32px;
            color: white;
        }

        .foot_info {
            color: white;
            margin-top: 30px;
        }
    </style>
</head>
<body>

<div class="about">
    <form action="saveUser.action" method="post">
    	<table>
    		<tr>
    		<td>用户名&nbsp;&nbsp;</td><td><input style="width: 200px; height: 30px; border-radius: 5px;font-size: 26px;" type="text" name="user.name"></td>
    		</tr>
    		<br>
    		<br>
    		<tr>
    		<td>密码&nbsp;&nbsp;</td><td><input style="width: 200px; height: 30px; border-radius: 5px;font-size: 26px;" type="password" name="user.password"></td>
    		</tr>
    		<br>
    		<br>
    		<tr>
    		<td>确认密码&nbsp;&nbsp;</td><td><input style="width: 200px; height: 30px; border-radius: 5px;font-size: 26px;" type="password" name="password"></td>
    		</tr>
    		<br>
    		<br>
    		<tr>
    		<td>所属部门</td>&nbsp;&nbsp;<td><select style="width: 200px; height: 30px; border-radius: 5px;font-size: 26px;" name="user.department.id" >
    		<c:forEach items="${list }" var="department">
    			<option value="${department.id }">${department.name }</option>
    		</c:forEach>
    	</select><br></td>
    		</tr>
    		<br>
    		<tr>
    		<td>&nbsp;&nbsp;</td><td><input type="submit" value="提交" style="width:100px; height:30px;"></td>
    		</tr>
    	</table>
    	
    </form>
</div>

</body>
</html>
