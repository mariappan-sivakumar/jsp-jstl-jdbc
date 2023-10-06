package com.myapp.mcvdemo;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/MvcDemo")
public class MvcDemo extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String[] students={"Mari","Balaji","Raj","Jeya"};
        req.setAttribute("student",students);
        RequestDispatcher dispatcher= req.getRequestDispatcher("view_students.jsp");
        dispatcher.forward(req,resp);
    }

}
