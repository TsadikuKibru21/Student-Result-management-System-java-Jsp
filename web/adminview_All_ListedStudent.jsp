
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.SQLException" %>
<%@page import="java.util.logging.Level" %>
<%@page import="java.util.logging.Logger" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Student grade</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body>
    
<div class="form-group">
                <div  class="col-sm-4"></div>
                <div  class="col-sm-4">
                    <h2 style="text-align: center">Student Details</h2>
                </div>
            </div>
            <div class="col-sm-2">
                        
                        <a href="adminviewSelect.jsp"><Button class="btn btn-success" style="width: 80px;">BACK</Button></a>
                    </div>
<table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">id</th>
       <th scope="col">name</th>
       <th scope="col">department</th>
        <th scope="col">year</th>

    </tr>
  </thead>
  <tbody>
  <%
       Connection con;
                PreparedStatement pst;
                ResultSet rs;
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost/cci","root","");

 String query = "select id,name,department,year from student1";
pst = con.prepareStatement(query);
rs = pst.executeQuery();
while(rs.next()){
%>
<tr>   
<th scope="row"><%= rs.getString("id") %></th>
<td><%=rs.getString("name")%></td>
<td><%=rs.getString("department")%></td>
<td><%=rs.getString("year")%></td>

</tr>
<% }%>
  </tbody>
</table>
 
</body>
</html>