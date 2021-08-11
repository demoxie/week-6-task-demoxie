/*
package com.example.week6taskdemoxie.controller;

import java.sql.*;


public class CreateMySqlDatabaseExample {
    public static void main(String[] args) throws ClassNotFoundException, InstantiationException, IllegalAccessException {

        String url = "jdbc:mysql://localhost:3306/facebookDB?autoReconnect=true&useSSL=false";

        // Defines username and password to connect to database server.
        String username = "root";
        String password = "Ubandomaadamu@24";

        // SQL command to create a database in MySQL.
        String sql = "INSERT INTO  user(userID, firstName, lastName, dateOfBirth, gender, userName, password, status,phoneNumber, profile_pic_url, address, date_signed_up) values (3,\"James\",\"Mikky\",\"1990-04-15\",\"Male\",\"demoxie\",\"563248\",\"i am happy\",\"07067659632\",\"cdhfg\",\"home alone\",\"2021-01-01 12:01:01\")";
        //Connection connection = DriverManager.getConnection("jdbc:mysql://localhost?useTimezone=true&serverTimezone=UTC","USER-NAME","PASSWORD");
        String = new Date();

        try {
            Connection conn = DriverManager.getConnection(url, username, password);
            PreparedStatement stmt = conn.prepareStatement(sql);
            //stmt.execute();
            int rs=stmt.executeUpdate(sql);
            if(rs>0)
                System.out.println("inserted");
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
*/
