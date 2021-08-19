<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("id");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "exam_moodle";
String userid = "root";
String password = "root";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from lecturer where id="+id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<head><title>Update Paper</title>
<link rel = "stylesheet"
   type = "text/css"
   href = "../styles/paper.css" /></head>
   <link rel = "stylesheet"
   type = "text/css"
   href = "../styles/admin.css" /></head>
<body style="background-image:url('../images/paper.png')">
<center>
<h1 style="color:white">Update Paper</h1>
<div style="float:left"><button style="background-color:gray;color:white" onclick="document.location.href='mainLogin.jsp'">Logout</button></div>
<div style="float:right">OR <a href="paper.jsp"><button style="padding:5px;color:blue">Publish Paper</button></a></div>
<form method="post" action="update-process.jsp">
<table border="0" cellpadding="10" cellspacing="1" width="500" align="center" class="tblLogin">
<tr>
<td style="color:red"><img src="../images/snow2.svg"  style="width:30px;height:20px"><b>ID:</td>
<td><input type="hidden" name="id" value="<%=resultSet.getString("id") %>"><input type="text" name="id" value="<%=resultSet.getString("id") %>" disabled></td>
</tr>
<tr>
<td style="color:red"><img src="../images/snow2.svg"  style="width:30px;height:20px"><b>Paper ID:</td>
<td><input type="text" name="paperID" value="<%=resultSet.getString("paperID") %>"></td>
</tr>
<tr>
<td style="color:red"><img src="../images/snow2.svg"  style="width:30px;height:20px"><b>Paper Type:</td>
<td><input type="text" name="paperType" value="<%=resultSet.getString("paperType") %>" required>
</td>
</tr>
<tr>
<td style="color:red"><img src="../images/snow2.svg"  style="width:30px;height:20px"><b>Paper Version:</td>
<td><input type="text" name="paperVersion" value="<%=resultSet.getString("paperVersion") %>" required>
</td>
</tr>
<tr>
<td style="color:red"><img src="../images/snow2.svg"  style="width:30px;height:20px"><b>Faculty:</td>
<td><input type="text" name="faculty" value="<%=resultSet.getString("faculty") %>" required>
</td>
</tr>
<tr>
<td style="color:red"><img src="../images/snow2.svg"  style="width:30px;height:20px"><b>Department:</td>
<td><input type="text" name="department" value="<%=resultSet.getString("department") %>" required>
</td>
</tr>
<tr>
<td style="color:red"><img src="../images/snow2.svg"  style="width:30px;height:20px"><b>Date Published:</td>
<td><input type="text" name="datePublished" value="<%=resultSet.getString("datePublished") %>" required>
</td>
</tr>
<tr>
<td style="color:red"><img src="../images/snow2.svg"  style="width:30px;height:20px"><b>Signature:</td>>
<td><input type="text" name="signature" value="<%=resultSet.getString("signature") %>" required>
</td>
</tr>
<tr>
<td style="color:red"><img src="../images/snow2.svg"  style="width:30px;height:20px"><b>Duration(Int):</td>
<td><input type="text" name="duration" value="<%=resultSet.getDouble("duration") %> " pattern="[1-2]{1}" required>
</td>
</tr>
<tr><td>
<center><input type="submit" value="Update" style="padding:5px;color:white;background-color:blue;margin-left:150px"> </center></td>
</table><br>
</center>
</form>

<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>