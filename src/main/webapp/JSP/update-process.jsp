<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/exam_moodle";%>
<%!String user = "root";%>
<%!String psw = "root";%>
<%
String id = request.getParameter("id");
String paperID=request.getParameter("paperID");
String paperType=request.getParameter("paperType");
String paperVersion=request.getParameter("paperVersion");
String faculty=request.getParameter("faculty");
String department=request.getParameter("department");
String datePublished=request.getParameter("datePublished");
String signature=request.getParameter("signature");
String duration=request.getParameter("duration");

if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update lecturer set id=?,paperID=?,paperType=?,paperVersion=?,faculty=?,department=?,datePublished=?,signature=?,duration=? where id="+id;
ps = con.prepareStatement(sql);

ps.setString(1, id);
ps.setString(2, paperID);
ps.setString(3, paperType);
ps.setString(4, paperVersion);
ps.setString(5, faculty);
ps.setString(6, department);
ps.setString(7, datePublished);
ps.setString(8, signature);
ps.setString(9, duration);

int i = ps.executeUpdate();
if(i > 0)
{
	//redirect page
	String site = new String("ListLecturers.jsp");
	response.setStatus(response.SC_MOVED_TEMPORARILY);
	response.setHeader("Location", site); 
}
else
{
out.print("There is a problem in updating Record.");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>