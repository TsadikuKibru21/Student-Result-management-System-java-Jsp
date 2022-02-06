
import java.io.*;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class Register extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        //out.print("hello html");
        String n = request.getParameter("id");
        String p = request.getParameter("userName");
        String e = request.getParameter("dep");
        String c = request.getParameter("year");
        String s = request.getParameter("userPass");

        try {
            DBConnection dbcon = new DBConnection();
            Connection con = dbcon.connMethod();
            out.print("You are connected successfully ...");
            PreparedStatement ps = con.prepareStatement("insert into student1 values(?,?,?,?,?)");
            ps.setString(1, n);
            ps.setString(2, p);
            ps.setString(3, e);
            ps.setString(4, c);
            ps.setString(5, s);

          ps.execute();
        out.print("You are inserted successfully ...");

                /* Printing column names */
      

        } catch (Exception e2) {
            System.out.println(e2);
        }

        out.close();
    }

}
