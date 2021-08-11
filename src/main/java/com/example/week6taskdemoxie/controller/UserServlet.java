package com.example.week6taskdemoxie.controller;

import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.example.week6taskdemoxie.dao.UserDAO;
import com.example.week6taskdemoxie.model.User;
import lombok.SneakyThrows;


@WebServlet("/sign-up")
public class UserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private UserDAO userDAO;

    public void init() {
        userDAO = new UserDAO();
    }

    @SneakyThrows
    protected void doPost(HttpServletRequest request, HttpServletResponse response) {
        String firstName = request.getParameter("first_name");
        String lastName = request.getParameter("last_name");
/*        String day = request.getParameter("birthday_day");
        String month = request.getParameter("birthday_month");
        String year = request.getParameter("birthday_year");*/
        String gender = request.getParameter("gender");
        String dob = request.getParameter("dob");
//        String dob = year+"-"+month+"-"+day;
        java.util.Date date = new SimpleDateFormat("yyyy-MM-dd").parse(dob);
     /*   String gender = "";
        System.out.println(date);
        System.out.println(request.getParameter("female_gender"))*/;
       /* if(request.getParameter("male_gender") != null){
            gender = request.getParameter("male_gender");
        }else{
            gender = request.getParameter("female_gender");
        }*/
        String phoneEmail = request.getParameter("phone_email");
        String password = request.getParameter("password");
        User user = new User();
        user.setFirstName(firstName);
        user.setLastName(lastName);
        user.setDateOfBirth(date);
        user.setGender(gender);
        user.setUserName(phoneEmail);
        user.setPassword(password);

        try {
            System.out.println(userDAO.insertUser(user));
            if(userDAO.insertUser(user)){
                response.sendRedirect("home.jsp");
            }
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }


    }

/*    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getServletPath();

        try {
            switch (action) {
                case "/new":
                    //showNewForm(request, response);
                    break;
                case "/insert":
                    insertUser(request, response);
                    break;
                case "/delete":
                    //deleteUser(request, response);
                    break;
                case "/edit":
                    //showEditForm(request, response);
                    break;
                case "/update":
                    //updateUser(request, response);
                    break;
                default:
                    //listUser(request, response);
                    break;
            }
        } catch (SQLException | ParseException ex) {
            throw new ServletException(ex);
        }
    }*/

/*    private void listUser(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        List < User > listUser = userDAO.selectAllUsers();
        request.setAttribute("listUser", listUser);
        RequestDispatcher dispatcher = request.getRequestDispatcher("user-list.jsp");
        dispatcher.forward(request, response);
    }*/

/*    private void showNewForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("user-form.jsp");
        dispatcher.forward(request, response);
    }*/

/*    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        User existingUser = userDAO.selectUser(id);
        RequestDispatcher dispatcher = request.getRequestDispatcher("user-form.jsp");
        request.setAttribute("user", existingUser);
        dispatcher.forward(request, response);

    }*/

/*    private void insertUser(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ParseException {
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String gender = request.getParameter("gender");
        Date date = (Date) new SimpleDateFormat("yyyy-MM-dd").parse(String.valueOf(request.getParameter("dateOfBirth")));
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        User newUser = new User(firstName,lastName,date,gender,userName,password);
        userDAO.insertUser(newUser);
        response.sendRedirect("list");
    }*/

/*    private void updateUser(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String country = request.getParameter("country");

        User book = new User(id, name, email, country);
        userDAO.updateUser(book);
        response.sendRedirect("list");
    }*/

/*    private void deleteUser(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        userDAO.deleteUser(id);
        response.sendRedirect("list");

    }*/
}
