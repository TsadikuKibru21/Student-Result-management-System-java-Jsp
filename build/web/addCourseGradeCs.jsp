
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
      String Automata = request.getParameter("Automata");
      String AdvancedProgramming = request.getParameter("AdvancedProgramming");
      String AssemblyLanguage = request.getParameter("AssemblyLanguage");
      String NumericalAnalaysis = request.getParameter("NumericalAnalaysis");
      String OperatingSystem = request.getParameter("OperatingSystem");
       String SoftwareEngineering = request.getParameter("SoftwareEngineering");
       
       
       double str1 = Double.parseDouble(Automata);
       double str2 = Double.parseDouble(AdvancedProgramming);
       double str3 = Double.parseDouble(AssemblyLanguage);
       double str4 = Double.parseDouble(NumericalAnalaysis);
       double str5 = Double.parseDouble(OperatingSystem);
       double str6 = Double.parseDouble(SoftwareEngineering);
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
      String query = "INSERT INTO course(stud_id,Automata,AdvancedProgramming,AssemblyLanguage,NumericalAnalaysis,OperatingSystem,SoftwareEngineering,grade) VALUES (?,?,?,?,?,?,?,?)";
     
      if(stud_id.equals("")||Automata.equals("")||AdvancedProgramming.equals("")||AssemblyLanguage.equals("")||NumericalAnalaysis.equals("")||OperatingSystem.equals("")||SoftwareEngineering.equals(""))
      {
          msg="please fill every field";
      }
      
      else{
            
      
      PreparedStatement pst = con.prepareStatement(query);
     
      pst.setString(1, stud_id);
      pst.setString(2, Automata);
      pst.setString(3, AdvancedProgramming);
      pst.setString(4, AssemblyLanguage);
     pst.setString(5, NumericalAnalaysis);
      pst.setString(6, OperatingSystem);
       pst.setString(7, SoftwareEngineering);
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
                      
        <form id="form" method="post" action="addCourseGradeCs.jsp" class="form-horizontal">
        
            <div class="form-group">
                <div  class="col-sm-4"></div>
                <div  class="col-sm-4">
                    <h2 style="text-align: center">course Details</h2>
                     
                </div>
            </div>
            <hr/>
            <div class="form-group">
                 <div  class="col-sm-4"></div>
                  <div  class="col-sm-4 mx-auto">
                   <label>stud_ID</label>
   <input type="text" name="stud_id" class="form-control" id="sid" >
                  </div>
</div>
<div class="form-group">
                 <div  class="col-sm-4"></div>
                  <div  class="col-sm-4 mx-auto">
                   <label > Automata</label>
   <input type="text" name="Automata" class="form-control" id="a">
                  </div>
</div>
<div class="form-group">
                 <div  class="col-sm-4"></div>
                  <div  class="col-sm-4 mx-auto">
                   <label>AdvancedProgramming</label>
   <input type="text" name="AdvancedProgramming" class="form-control" id="b">
                  </div>
</div>
<div class="form-group">
                            <div  class="col-sm-4"></div>
                            <div  class="col-sm-4 mx-auto">
                                        <label>AssemblyLanguage</label>
   <input type="text" name="AssemblyLanguage" class="form-control" id="c">
                            </div>
</div>
            <div class="form-group">
                            <div  class="col-sm-4"></div>
                            <div  class="col-sm-4 mx-auto">
                                        <label>NumericalAnalaysis</label>
   <input type="text" name="NumericalAnalaysis" class="form-control" id="d">
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
                                        <label>SoftwareEngineering</label>
   <input type="text" name="SoftwareEngineering" class="form-control" id="f">
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