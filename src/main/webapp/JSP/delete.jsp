<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String id=request.getParameter("id");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/exam_moodle", "root", "root");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM lecturer WHERE id="+id);
String site = new String("ListLecturers.jsp");
response.setStatus(response.SC_MOVED_TEMPORARILY);
response.setHeader("Location", site); //redirect page
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>