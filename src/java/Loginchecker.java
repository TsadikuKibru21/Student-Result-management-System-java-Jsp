
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Loginchecker extends HttpServlet{

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String n = request.getParameter("name");
        String p = request.getParameter("pass");
       
        String proximaPage = " ";
        if(n.equals("admin")&&p.equals("123")) {
            proximaPage = "/adminWork.jsp";
        }    
        else if (LoginDao.validate(n, p)) {
            proximaPage = "/student_Insert_ID.jsp";   
        }          
        else {
          proximaPage = "/ErrorPage.jsp";
           out.print("Sorry username or password error");
 
        }
        RequestDispatcher rd = request.getRequestDispatcher(proximaPage);
        rd.forward(request, response);
        
    }

}
