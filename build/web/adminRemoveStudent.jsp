<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<style>
body{  
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  background-image: url("home1.jpg");    
}
</style>

<%
            
   Connection con;    
 String id = request.getParameter("id");
  
     
      Class.forName("com.mysql.jdbc.Driver");
       con = DriverManager.getConnection("jdbc:mysql://localhost/cci","root","");
      String query = "delete from course where stud_id = ?";
     
      PreparedStatement pst = con.prepareStatement(query);
     
     
      pst.setString(1, id);
      pst.executeUpdate();
    %>  
    
    <script>   
          window.location.replace("adminViewStudentGradeListed.jsp");      
    </script>