
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Home</title>
    </head>
    <body>
        
        <div> <a href="ChangePassword.jsp"  class="btn btn-success">Change Password</a></div>
        <form action="NewServle" method="post">

            <fieldset>
                <p id="msg">
                    <% String msg = (String) request.getAttribute("msg");%>
                    <%= msg != null ? msg : ""%><br>
                </p>
                <legend>Student page</legend>

                   
                <label>id </label>
                       <input type="text" name="id">
                    
                       <label>department</label>
                      
                    <select class="form-control" name="stud">
                                    <!--                    (please select:)-->
                                    <option value="cs" selected>cs </option>
                                    <option value="sw">sw </option>
                             
                                </select>
          
            </fieldset>

            <br>
            <input type="submit" value="View"> <input type="reset"
                                                        value="Reset">
        </form>
                 <a href="Login.jsp"><Button class="btn btn-success" style="width: 80px;">BACK</Button></a>
    </body>
</html>