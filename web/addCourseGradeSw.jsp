
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
       String stud_id = request.getParameter("stud_id");
       String Eco = request.getParameter("Economics");
      String global = request.getParameter("GlobalTrend");
      String oop = request.getParameter("oop");
      String oosad = request.getParameter("oosad");
      String OperatingSystem = request.getParameter("OperatingSystem");
       String stat = request.getParameter("stastics");
       
       
       double str1 = Double.parseDouble(Eco);
       double str2 = Double.parseDouble(global);
       double str3 = Double.parseDouble(oop);
       double str4 = Double.parseDouble(oosad);
       double str5 = Double.parseDouble(OperatingSystem);
       double str6 = Double.parseDouble(stat);
       double tot=0;
       double [] ab={str1,str2,str3,str4,str5,str6};
       
       if((str1>100||str1<0)||(str2>100||str2<0)||(str3>100||str3<0)||(str4>100||str4<0)||(str5>100||str5<0)||(str6>100||str6<0)){
           msg="enter range between 0-100";  
       }
       
       else{
          for(int i=0;i<6;i++){
       if(ab[i]>=85){
          ab[i]=4.0;  
       }
        else if(ab[i]>=80&&ab[i]<85){
          ab[i]=3.75;  
       }
        else if(ab[i]>=75&&ab[i]<80){
          ab[i]=3.5;  
       }
        else if(ab[i]>=70&&ab[i]<75){
          ab[i]=3.0;  
       }
       else  if(ab[i]>=65&&ab[i]<70){
          ab[i]=2.75;  
       }
        else if(ab[i]>=60&&ab[i]<65){
          ab[i]=2.5;  
       }
    
        else if(ab[i]>=50&&ab[i]<60){
          ab[i]=2.0;  
       }
        else if(ab[i]>=45&&ab[i]<50){
          ab[i]=1.75;  
       }
        else if(ab[i]>=40&&ab[i]<45){
          ab[i]=1.0;  
       }
        else if(ab[i]<40){
          ab[i]=0;  
       }

           tot=tot+ab[i];
       }
       
       Double tr=tot/6;
       
       
       
       
      Class.forName("com.mysql.jdbc.Driver");
       con = DriverManager.getConnection("jdbc:mysql://localhost/cci","root","");
      String query = "INSERT INTO course1(stud_id,Econamics,Global_trend,oop,oosad,OperatingSystem,stastics,grade) VALUES (?,?,?,?,?,?,?,?)";
     
      if(stud_id.equals("")||Eco.equals("")||global.equals("")||oop.equals("")||oosad.equals("")||OperatingSystem.equals("")||stat.equals(""))
      {
          msg="please fill every field";
      }
      
      else{
          
      
      PreparedStatement pst = con.prepareStatement(query);
     
      pst.setString(1, stud_id);
      pst.setString(2, Eco);
      pst.setString(3, global);
      pst.setString(4, oop);
     pst.setString(5, oosad);
      pst.setString(6, OperatingSystem);
      pst.setString(7, stat);
      pst.setDouble(8, tr);
      pst.executeUpdate();
     
      color = "green";
      msg = "course Grade Added Succesfully";}}
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
                      <a href="SelectDepartment.jsp"><Button class="btn btn-success" style="width: 80px;">BACK</Button></a>
        <form id="form" method="post" action="addCourseGradeSw.jsp" class="form-horizontal">
        
            <div class="form-group">
                <div  class="col-sm-4"></div>
                <div  class="col-sm-4">
                    <h2 style="text-align: center">Software Engineering course Details</h2>
                     
                </div>
            </div>
            <hr/>
            <div class="form-group">
                 <div  class="col-sm-4"></div>
                  <div  class="col-sm-4 mx-auto">
                   <label>stud_ID</label>
   <input type="text" name="stud_id" class="form-control" id="sid">
                  </div>
</div>
<div class="form-group">
                 <div  class="col-sm-4"></div>
                  <div  class="col-sm-4 mx-auto">
                   <label > Economics</label>
   <input type="text" name="Economics" class="form-control" id="a">
                  </div>
</div>
<div class="form-group">
                 <div  class="col-sm-4"></div>
                  <div  class="col-sm-4 mx-auto">
                   <label>Global Trend</label>
   <input type="text" name="GlobalTrend" class="form-control" id="b">
                  </div>
</div>
<div class="form-group">
                            <div  class="col-sm-4"></div>
                            <div  class="col-sm-4 mx-auto">
                                        <label>OOP</label>
   <input type="text" name="oop" class="form-control" id="c">
                            </div>
</div>
            <div class="form-group">
                            <div  class="col-sm-4"></div>
                            <div  class="col-sm-4 mx-auto">
                                        <label>OOSAD</label>
   <input type="text" name="oosad" class="form-control" id="d">
                            </div>
            </div><!-- comment -->
            <div class="form-group">
                            <div  class="col-sm-4"></div>
                            <div  class="col-sm-4 mx-auto">
                                        <label>OperatingSystem</label>
   <input type="text" name="OperatingSystem" class="form-control" id="e">
                            </div>
</div>
            <div class="form-group">
                            <div  class="col-sm-4"></div>
                            <div  class="col-sm-4 mx-auto">
                                        <label>Stastics</label>
   <input type="text" name="stastics" class="form-control" id="f">
                            </div>
</div>

            <br/>
            
            <div class="form-group" align="right">
            
                <div class="col-sm-6">
                    <div class="col-sm-2">
                        <Button class="btn btn-success" style="width: 80px;">Submit</Button>
                      
                    </div>
                    <div class="col-sm-4">
                    </div>
                    
                </div>
            </div>
            
        </form>
        <div class="col-sm-12"  align="top">

        </div>
    </body>
    
    <script>

        </script>
    
    
</html>