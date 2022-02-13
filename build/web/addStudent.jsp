
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.SQLException" %>
<%@page import="java.util.logging.Level" %>
<%@page import="java.util.logging.Logger" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.util.ArrayList" %>
 
 
<html>
    <head>    
        <title>Student Registration Form</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        </head>
    <body>
        
         <%  
            Connection con;    
            String msg = "";
            String color = "";
       if(request.getMethod().compareToIgnoreCase("post")==0)
   {
   try
   {
        String n = request.getParameter("id");
        String p = request.getParameter("userName");
        String e = request.getParameter("dep");
        String c = request.getParameter("year");
        String s = request.getParameter("userPass");
       
       

       
      Class.forName("com.mysql.jdbc.Driver");
       con = DriverManager.getConnection("jdbc:mysql://localhost/cci","root","");
      String query = "insert into student1 values(?,?,?,?,?)";
     
      if(n.equals("")||p.equals("")||e.equals("")||c.equals("")||s.equals("")){
          msg="please fill every field";
      }
      
      else{
          
      
      PreparedStatement pst = con.prepareStatement(query);
     
      pst.setString(1, n);
      pst.setString(2, p);
      pst.setString(3, e);
      pst.setString(4, c);
     pst.setString(5, s);
  
      pst.executeUpdate();
     
      color = "green";
      msg = " Student Added Succesfully";}
   }catch(Exception ex){
   ex.printStackTrace();
   color = "red";
   msg = "Error Occured";
   }
   }
    %>      
    <div class="form-group col-12 p-0">
        
<h4 style="color:<%= color %>"><%= msg %></h4>
</div>
                   <a href="First.jsp"><Button class="btn btn-success" style="width: 80px;">Home</Button></a>
                 
              <form action="addStudent.jsp" method="post">
            <fieldset>
                <p id="msg">
                  
                    <%= msg != null ? msg : ""%><br>
                </p>
                <legend>Student Register </legend>

                <table>
                    <tr>
                        <td>id</td>
                        <td><input type="text" name="id"></td>
                    </tr>
                         <tr>
                        <td>Name</td>
                        <td><input type="text" name="userName"></td>
                         </tr><!-- comment -->
                              <tr>
                        <td>department</td>
                        <td><input type="text" name="dep"></td>
                    </tr>
                         <tr>
                        <td>year</td>
                        <td><input type="text" name="year"></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="Password" name="userPass"></td>

                    </tr>
                </table>
            </fieldset>

            <br>
            <input type="submit" value="Submit"> <input type="reset"
                                                        value="Reset">
        </form>
                 <a href="adminWork.jsp"><Button class="btn btn-success" style="width: 80px;">BACK</Button></a>
    </body>
</html>