package com.example.week6taskdemoxie.controller;

import com.example.week6taskdemoxie.dao.UserDAO;
import com.example.week6taskdemoxie.model.User;

import java.io.IOException;
import java.util.Map;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class LoginS extends HttpServlet {
    //private static final long serialVersionUID = 1 L;
    private UserDAO userDAO;

    public void init() {
        userDAO = new UserDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException {

        String username = request.getParameter("login_username");
        String password = request.getParameter("login_password");
        User user = new User();
        user.setUserName(username);
        user.setPassword(password);

        try {
            Map<Boolean,User> result = userDAO.validate(user);
            Map.Entry<Boolean,User> entry = result.entrySet().iterator().next();
            Boolean key = entry.getKey();
            User value = entry.getValue();
            if (key) {
                HttpSession session = request.getSession();
                session.setAttribute("user",value);
                response.sendRedirect("home.jsp");
            } else {
                //HttpSession session = request.getSession();
                //session.setAttribute("user", username);
                response.sendRedirect("index.jsp");
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}