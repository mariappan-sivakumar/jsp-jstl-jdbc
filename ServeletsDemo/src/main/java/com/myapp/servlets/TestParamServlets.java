package com.myapp.servlets;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/TestParam")
public class TestParamServlets extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        PrintWriter out= resp.getWriter();
        ServletContext context= getServletContext();
        String maxCart= context.getInitParameter("max_shop_size");
        String developer=context.getInitParameter("Developer");
        out.println("<html><body>");
        out.println("The Developer name is "+developer+" max shoping cart is"+
                maxCart);
        out.println("</html></body>");
    }
}
