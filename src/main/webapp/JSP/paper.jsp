<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel = "stylesheet"
   type = "text/css"
   href = "../styles/paper.css" />
   <link rel = "stylesheet"
   type = "text/css"
   href = "../styles/admin.css" />

<meta charset="UTF-8">
<title>VIP Paper Published</title>
</head>
<body class="body" style="background-image:url('../images/paper.png')">
<center>
<h1 style="background-color:yellow">Welcome Back! Prof.Sahan Kumarasiri</h1>

	
	<button style="background-color:gray;color:white;float:left" onclick="document.location.href='mainLogin.jsp'">Logout</button>
	<br>	<br>	<br>
	<div style="float:right">
	<form method="post" action="<%=request.getContextPath()%>/SearchLecturerServelet" >
	<table border="0" cellpadding="10" cellspacing="1" width="500" align="center" class="tblLogin"><tr>
				<td style="color:red"><img src="../images/snow2.svg"  style="width:30px;height:20px"><b>Paper ID</td>
				<td><input type="text" name="paperID"  placeholder="e.g. IT0000" required/></td>
				<td><input type = "submit" style="background-color:green;color:white" value="Search Paper"></td>
	</tr></table>
	
	</form>
	<br><br><br><br><br>
	<center><a href="ListLecturers.jsp"><button style="color:red;font-size:30px;width:285px;margin-left:65px;">List All Papers</button></a></center>
	</div>
	<form method="POST" action="<%=request.getContextPath()%>/AddLecturerServelet">
		<table  border="0" cellpadding="10" cellspacing="1" width="500" align="center" class="tblLogin">
			<tr><td><center><h2 class="h2"><img src="../images/upload.svg"  style="width:30px;height:20px">Publish Paper</h2></td></center></tr>
			<tr>
				<td style="color:red"><img src="../images/snow2.svg"  style="width:30px;height:20px"><b>Paper ID</td>
				<td><input type="text" name="paperID" required placeholder="e.g. IT0000"/></td>
		

			</tr>
			<tr>
				<td style="color:red"><img src="../images/snow2.svg"  style="width:30px;height:20px"><b>Paper Type</td>
				<td><input type="radio" name="paperType" value="MCQ"
					checked="checked" tabindex="1" /> MCQ</td>
			</tr>
			<tr>
				<td></td>
				<td><input type="radio" name="paperType" value="Final"
					tabindex="2" required/> Final</td>
			</tr>
			<tr>
				<td style="color:red"><img src="../images/snow2.svg"  style="width:30px;height:20px"><b>Paper Version</td>
				<td><input type="text" name="paperVersion" required placeholder="e.g. A"/></td>
			</tr>
			<tr>
				<td style="color:red"><img src="../images/snow2.svg"  style="width:30px;height:20px"><b>Faculty</td>
				<td><input type="text" name="faculty" required placeholder="e.g. Computing"/></td>
			</tr>
			<tr>
				<td style="color:red"><img src="../images/snow2.svg"  style="width:30px;height:20px"><b>Department</td>
				<td><input type="text" name="department" required placeholder="e.g. CSSE"/></td>
			</tr>
			<tr>
				<td style="color:red"><img src="../images/snow2.svg"  style="width:30px;height:20px"><b>Date Published</td>
				<td><input type="date" name="datePublished" required  placeholder="e.g. 2021-01-01"/></td>
			</tr>
			<tr>
				<td style="color:red"><img src="../images/snow2.svg"  style="width:30px;height:20px"><b>Signature</td>
				<td><input type="text" name="signature" required placeholder="Lecturer Signarure"/></td>
			</tr>
			<tr>
				<td style="color:red"><img src="../images/snow2.svg"  style="width:30px;height:20px"><b>Duration</td>
				<td><input type="text" name="duration" pattern="[1-2]{1}" required  placeholder="MCQ = 1hr , Final = 2hr"/></td>
				
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Add Paper" class="add-button" style="color:white"/> </td>
			</tr>
			<tr>	
				<td colspan="2"><input type="reset" value="Reset" class="reset-button" style="color:white;background-color:green"/></td>
			</tr>

		</table>
		</form>
		



</center>
</body>
</html>