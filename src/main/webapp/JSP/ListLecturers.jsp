<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("userid");
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
<!DOCTYPE html>
<html>
<head>
	<link rel = "stylesheet"
   type = "text/css"
   href = "../styles/paper.css" />
   <title>Available Papers</title>
 </head>
<body style="background-image:url('../images/paper.png')">

<center><h1 style="color:white">Available Papers</h1></center>
<button style="background-color:gray;color:white" onclick="document.location.href='mainLogin.jsp'">Logout</button>
<table style="padding:5px;margin:5px">
<tr>
<th style="background-color:yellow">Paper_ID</th>
<th style="background-color:yellow">Paper_Type</th>
<th style="background-color:yellow">Paper_Version</th>
<th style="background-color:yellow">Faculty</th>
<th style="background-color:yellow">Department</th>
<th style="background-color:yellow">Date_Published</th>
<th style="background-color:yellow">Signature</th>
<th style="background-color:yellow">Duration(hr)</th>
<th style="background-color:orange">Operation</th>

</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from lecturer";
resultSet = statement.executeQuery(sql);
int i=0;
while(resultSet.next()){
%>
<tr>
<td style="background-color:white"><%=resultSet.getString("paperID") %></td>
<td style="background-color:white"><%=resultSet.getString("paperType") %></td>
<td style="background-color:white"><%=resultSet.getString("paperVersion") %></td>
<td style="background-color:white"><%=resultSet.getString("faculty") %></td>
<td style="background-color:white"><%=resultSet.getString("department") %></td>
<td style="background-color:white"><%=resultSet.getString("datePublished") %></td>
<td style="background-color:white"><%=resultSet.getString("signature") %></td>
<td style="background-color:white"><%=resultSet.getDouble("duration") %></td>
<td style="background-color:white"><a href="delete.jsp?id=<%=resultSet.getString("id") %>"><button style="color:white;background-color:red">Delete</button></a><a href="update.jsp?id=<%=resultSet.getString("id")%>" style="text-decoration:none;"><button style="color:white;background-color:blue">update</button></a></td>
</tr>
<%
i++;
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<br><br><br>

<center><a href="paper.jsp"><button style="color:red;font-size:30px">Publish Paper</button></a></center>
</body>
</html>