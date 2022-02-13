<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%
String currentPassword=request.getParameter("current");
String Newpass=request.getParameter("new");
String conpass=request.getParameter("confirm");
String connurl = "jdbc:mysql://localhost:3306/cci";
Connection con=null;
String pass="";
int id=0;
try{
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection(connurl, "root", "");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from student1 where password='"+currentPassword+"'");
while(rs.next()){
id=rs.getInt(1);
pass=rs.getString(5);
}System.out.println(id+ " "+pass);
if(pass.equals(currentPassword)&&Newpass.equals(conpass)){
Statement st1=con.createStatement();
int i=st1.executeUpdate("update student1 set password='"+Newpass+"' where id='"+id+"'");
out.println("Password changed successfully");
st1.close();
con.close();
}
else if(!pass.equals(currentPassword)){
out.println("Invalid Current Password");
}
else if(!Newpass.equals(conpass)){
   out.println("please make similar password"); 
  
}
}
catch(Exception e){
out.println(e);
}
%>