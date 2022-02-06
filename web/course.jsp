
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

        <form action="servlet/courseRegister" method="post">

            <fieldset>
                <p id="msg">
                    <% String msg = (String) request.getAttribute("msg");%>
                    <%= msg != null ? msg : ""%><br>
                </p>
                <legend>Student Result Register </legend>

                <table>
                    <tr>
                        <td>id</td>
                        <td><input type="text" name="id"></td>
                    </tr>
                         <tr>
                        <td>Automata</td>
                        <td><input type="text" name="Au"></td>
                         </tr><!-- comment -->
                              <tr>
                        <td>AdvancedProgramming</td>
                        <td><input type="text" name="Ad"></td>
                    </tr>
                         <tr>
                        <td>AssemblyLanguage</td>
                        <td><input type="text" name="As"></td>
                    </tr>
                     </tr>
                         <tr>
                        <td>NumericalAnalysis</td>
                        <td><input type="text" name="Nu"></td>
                    </tr>
                     </tr>
                         <tr>
                        <td>OperatingSystem</td>
                        <td><input type="text" name="Op"></td>
                    </tr>
                     </tr>
                         <tr>
                        <td>SoftwareEngineering</td>
                        <td><input type="text" name="sw"></td>
                    </tr>
                    
                </table>
            </fieldset>

            <br>
            <input type="submit" value="Submit"> <input type="reset"
                                                        value="Reset">
        </form>
    </body>
</html>