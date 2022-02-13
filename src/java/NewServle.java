/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 *
 * @author Tsede
 */
public class NewServle extends HttpServlet {

  
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String n=request.getParameter("id");
         String d=request.getParameter("stud");
        
          String proximaPage = " ";
           if(d.equals("cs")) {
            proximaPage = "/studentView.jsp";
        }  
           
           else if(d.equals("sw")){
                  proximaPage = "/studentView_SW.jsp"; 
           }
    
  RequestDispatcher rd = request.getRequestDispatcher(proximaPage);
        rd.forward(request, response);
 
    }

}
