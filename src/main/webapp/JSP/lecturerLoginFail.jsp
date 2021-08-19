<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Lecturer Login</title>
<link rel="stylesheet" type="text/css" href="../styles/admin.css" />
<link rel="stylesheet" type="text/css" href="../styles/paper.css" />
</head>
<body style="background-image:url('../images/loginBack.jpg')">

<form action="<%=request.getContextPath()%>/login" method="post">
		<table border="0" cellpadding="10" cellspacing="1" width="500" align="center" class="tblLogin">
			<tr>
			<td><center><font color="red">Username and Password Mismatch</font></center><br>
			<center><font color="green">Please Re-Enter Your Credentials Again!</font></center><br>
			</td></tr>
			<td align="center" colspan="2"><h2  ><h2 class="h2">Enter Login Credentials</h2></td>
			</tr>
			<tr class="tablerow">
			<td>
			<img src="../images/person-square.svg" style="width:30px;height:20px"><input type="text" name="username" placeholder="Lecturer Name" class="login-input" required></td>
			</tr>
			<tr class="tablerow">
			<td>
			<img src="../images/file-lock2.svg" style="width:30px;height:20px"><input type="password" name="password" placeholder="Password" class="login-input" required></td>
			</tr>
			<tr class="tableheader">
			<td align="center" colspan="2"><input type="submit" name="submit" value="Submit" class="btnSubmit"></td>
			</tr>
		</table>
</form><br>
<center><button onclick="document.location.href='mainLogin.jsp'">Back</button></center>
</body></html>