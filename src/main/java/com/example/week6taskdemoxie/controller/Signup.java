package com.example.week6taskdemoxie.controller;

import java.io.*;
        import javax.servlet.*;
        import javax.servlet.http.*;
        import java.sql.*;
import java.text.SimpleDateFormat;

public class Signup extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String firstName = request.getParameter("first_name");
        String lastName = request.getParameter("last_name");
        String dob = request.getParameter("dob");
        String phoneEmail = request.getParameter("phone_email");
        String gender = request.getParameter("female_gender");
        String password = request.getParameter("password");

        try {

            // loading drivers for mysql
            Class.forName("com.mysql.jdbc.Driver");

            //creating connection with the database
            Connection con = DriverManager.getConnection
                    ("jdbc:mysql://localhost:3306/facebookDB?autoReconnect=true&useSSL=false","root","Ubandomaadamu@24");


            final String INSERT_USERS_SQL = "INSERT INTO user " + "(userID, firstName, lastName, dateOfBirth, gender, userName, password, status,phoneNumber, profile_pic_url, address, date_signed_up) VALUES " +
                    "(?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement preparedStatement = con.prepareStatement(INSERT_USERS_SQL);

            preparedStatement.setString(2, firstName);
            preparedStatement.setString(3, lastName);
            Date d = Date.valueOf(dob);
            preparedStatement.setDate(4, d);
            preparedStatement.setString(5, gender);
            preparedStatement.setString(6, phoneEmail);
            preparedStatement.setString(7, password);
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();

            if(preparedStatement.execute()) {
                out.println("You are successfully registered");
            }

        }
        catch(Exception se) {
            se.printStackTrace();
        }

    }
}