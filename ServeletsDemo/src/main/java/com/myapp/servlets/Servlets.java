package com.myapp.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/hello")
public class Servlets extends HttpServlet {
    public Servlets() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        PrintWriter out= resp.getWriter();
        out.println("<html><body>");
        out.println("<h2>Hello World</h2>");
        out.println("<hr>");
        out.println("Time is"+new java.util.Date());
        out.println("</html></body>");
    }
}
