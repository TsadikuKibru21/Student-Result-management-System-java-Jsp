
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

        <form action="servlet/Register" method="post">

            <fieldset>
                <p id="msg">
                    <% String msg = (String) request.getAttribute("msg");%>
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