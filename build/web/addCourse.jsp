
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
       
       if(str1>=85){
          ab[0]=4.0;  
       }
        else if(str1>=80&&str1<85){
          ab[0]=3.75;  
       }
        else if(str1>=75&&str1<80){
          ab[0]=3.5;  
       }
        else if(str1>=70&&str1<75){
          ab[0]=3.0;  
       }
       else  if(str1>=65&&str1<70){
          ab[0]=2.75;  
       }
        else if(str1>=60&&str1<65){
          ab[0]=2.5;  
       }
    
        else if(str1>=50&&str1<60){
          ab[0]=2.0;  
       }
        else if(str1>=45&&str1<50){
          ab[0]=1.75;  
       }
        else if(str1>=40&&str1<45){
          ab[0]=1.0;  
       }
        else if(str1<40){
          ab[0]=0;  
       }
       
 
             if(str2>=85){
          ab[1]=4.0;  
       }
        else if(str2>=80&&str2<85){
          ab[1]=3.75;  
       }
        else if(str2>=75&&str2<80){
          ab[1]=3.5;  
       }
        else if(str2>=70&&str2<75){
          ab[1]=3.0;  
       }
       else  if(str2>=65&&str2<70){
          ab[1]=2.75;  
       }
        else if(str2>=60&&str2<65){
          ab[1]=2.5;  
       }
        
              else if(str2>=50&&str2<60){
          ab[1]=2.0;  
       }
        else if(str2>=45&&str2<50){
          ab[1]=1.75;  
       }
        else if(str2>=40&&str2<45){
          ab[1]=1.0;  
       }
        else if(str2<40){
          ab[1]=0;  
       }
             
             
             
             
                   if(str3>=85){
          ab[2]=4.0;  
       }
        else if(str3>=80&&str3<85){
          ab[2]=3.75;  
       }
        else if(str3>=75&&str3<80){
          ab[2]=3.5;  
       }
        else if(str3>=70&&str3<75){
          ab[2]=3.0;  
       }
       else  if(str3>=65&&str3<70){
          ab[2]=2.75;  
       }
        else if(str3>=60&&str3<65){
          ab[2]=2.5;  
       }
       
        else if(str3>=50&&str3<60){
          ab[2]=2.0;  
       }
        else if(str3>=45&&str3<50){
          ab[2]=1.75;  
       }
        else if(str3>=40&&str3<45){
          ab[2]=1.0;  
       }
        else if(str3<40){
          ab[2]=0;  
       }          
                   
                   
                         if(str4>=85){
          ab[3]=4.0;  
       }
        else if(str4>=80&&str4<85){
          ab[3]=3.75;  
       }
        else if(str4>=75&&str4<80){
          ab[3]=3.5;  
       }
        else if(str4>=70&&str4<75){
          ab[3]=3.0;  
       }
       else  if(str4>=65&&str4<70){
          ab[3]=2.75;  
       }
        else if(str4>=60&&str4<65){
          ab[3]=2.5;  
       }
              else if(str4>=50&&str4<60){
          ab[3]=2.0;  
       }
        else if(str4>=45&&str4<50){
          ab[3]=1.75;  
       }
        else if(str4>=40&&str4<45){
          ab[3]=1.0;  
       }
        else if(str4<40){
          ab[3]=0;  
       }
                         
                         
                         
                         
                               if(str5>=85){
          ab[4]=4.0;  
       }
        else if(str5>=80&&str5<85){
          ab[4]=3.75;  
       }
        else if(str5>=75&&str5<80){
          ab[4]=3.5;  
       }
        else if(str5>=70&&str5<75){
          ab[4]=3.0;  
       }
       else  if(str5>=65&&str5<70){
          ab[4]=2.75;  
       }
        else if(str5>=60&&str5<65){
          ab[4]=2.5;  
       }
              else if(str5>=50&&str5<60){
          ab[4]=2.0;  
       }
        else if(str5>=45&&str5<50){
          ab[4]=1.75;  
       }
        else if(str5>=40&&str5<45){
          ab[4]=1.0;  
       }
        else if(str5<40){
          ab[4]=0;  
       }
       
  if(str6>=85){
          ab[5]=4.0;  
       }
        else if(str6>=80&&str6<85){
          ab[5]=3.75;  
       }
        else if(str6>=75&&str6<80){
          ab[5]=3.5;  
       }
        else if(str6>=70&&str6<75){
          ab[5]=3.0;  
       }
       else  if(str6>=65&&str6<70){
          ab[5]=2.75;  
       }
        else if(str6>=60&&str6<65){
          ab[5]=2.5;  
       }
              else if(str6>=50&&str6<60){
          ab[5]=2.0;  
       }
        else if(str6>=45&&str6<50){
          ab[5]=1.75;  
       }
        else if(str6>=40&&str6<45){
          ab[5]=1.0;  
       }
        else if(str6<40){
          ab[5]=0;  
       }
  
  
  
  
       
       for(int i=0;i<6;i++){
           
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
      msg = "course Grade Added Succesfully";}
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
        
        <form id="form" method="post" action="addCourse.jsp" class="form-horizontal">
        
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
   <input type="text" name="stud_id" class="form-control" id="sid">
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
            <a href="index.jsp"><Button class="btn btn-success" style="width: 80px;">Home</Button></a>
             <a href="adminWork.jsp"><Button class="btn btn-success" style="width: 80px;">BACK</Button></a>
        </div>
    </body>
    
    <script>

        
        </script>
    
    
</html>