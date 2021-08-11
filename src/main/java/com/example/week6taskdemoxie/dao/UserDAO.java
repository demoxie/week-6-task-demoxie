package com.example.week6taskdemoxie.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import com.example.week6taskdemoxie.model.User;

public class UserDAO {
    private String jdbcURL = "jdbc:mysql://localhost:3306/facebookDB?autoReconnect=true&useSSL=false";
    private String jdbcUsername = "root";
    private String jdbcPassword = "Ubandomaadamu@24";

    private static final String INSERT_USERS_SQL = "INSERT INTO user " + "(firstName, lastName, dateOfBirth, gender, userName, password, date_signed_up) VALUES " +
            "(?,?,?,?,?,?,now())";

    private static final String SELECT_USER_BY_ID = "SELECT * FROM user WHERE userID=?";
    private static final String SELECT_ALL_USERS = "SELECT * FROM user";
    private static final String DELETE_USERS_SQL = "delete from users where id = ?;";
    private static final String UPDATE_USERS_SQL = "update users set name = ?,email= ?, country =? where id = ?;";
    private static final String SELECT_USERNAME_PASSWORD = "SELECT * FROM user WHERE username = ? and password = ? ";

    public UserDAO() {}

    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException | ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return connection;
    }

    public boolean insertUser(User user) {
        boolean succeeded = false;
        try (Connection connection = getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {

            preparedStatement.setString(1, user.getFirstName());
            preparedStatement.setString(2, user.getLastName());
            preparedStatement.setDate(3, new java.sql.Date(user.getDateOfBirth().getTime()));
            preparedStatement.setString(4, user.getGender());
            preparedStatement.setString(5, user.getUserName());
            preparedStatement.setString(6, user.getPassword());
            //System.out.println(preparedStatement);
            int rowsAffected = preparedStatement.executeUpdate();
            if(rowsAffected>0){
                succeeded = true;
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return succeeded;
    }
    public Map<Boolean,User> validate(User user) throws ClassNotFoundException {
        boolean status = false;

        Class.forName("com.mysql.cj.jdbc.Driver");
        Map<Boolean,User> result = new HashMap<>();
        try (Connection connection = DriverManager
                .getConnection(jdbcURL, jdbcUsername, jdbcPassword);

             // Step 2:Create a statement using connection object
             PreparedStatement preparedStatement = connection
                     .prepareStatement(SELECT_USERNAME_PASSWORD)) {
            preparedStatement.setString(1, user.getUserName());
            preparedStatement.setString(2, user.getPassword());

            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();

            if(rs.next()){
                user.setUserID(rs.getLong("userID"));
                user.setFirstName(rs.getString("firstName"));
                user.setLastName(rs.getString("lastName"));
                user.setDateOfBirth(rs.getDate("dateOfBirth"));
                user.setGender(rs.getString("gender"));
                user.setUserName(rs.getString("userName"));
                user.setPassword(rs.getString("password"));
                user.setStatus(rs.getString("status"));
                user.setAddress(rs.getString("address"));
                user.setProfilePicsUrl(rs.getString("profile_pic_url"));
                 result.put(true,user);
            }

        } catch (SQLException e) {
            // process sql exception
            printSQLException(e);
        }
        return result;
    }

/*    public User selectUser(int id) {
        User user = null;
        // Step 1: Establishing a Connection
        try (Connection connection = getConnection();
             // Step 2:Create a statement using connection object
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER_BY_ID);) {
            preparedStatement.setInt(1, id);
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                String name = rs.getString("name");
                String email = rs.getString("email");
                String country = rs.getString("country");
                user = new User(id, name, email, country);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return user;
    }*/

/*    public List < User > selectAllUsers() {
        // using try-with-resources to avoid closing resources (boiler plate code)
        List < User > users = new ArrayList < > ();
        // Step 1: Establishing a Connection
        try (Connection connection = getConnection();

             // Step 2:Create a statement using connection object
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_USERS);) {
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String email = rs.getString("email");
                String country = rs.getString("country");
                users.add(new User(id, name, email, country));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return users;
    }*/

/*    public boolean deleteUser(int id) throws SQLException {
        boolean rowDeleted;
        try (Connection connection = getConnection(); PreparedStatement statement = connection.prepareStatement(DELETE_USERS_SQL);) {
            statement.setInt(1, id);
            rowDeleted = statement.executeUpdate() > 0;
        }
        return rowDeleted;
    }*/

/*    public boolean updateUser(User user) throws SQLException {
        boolean rowUpdated;
        try (Connection connection = getConnection(); PreparedStatement statement = connection.prepareStatement(UPDATE_USERS_SQL);) {
            statement.setString(1, user.getName());
            statement.setString(2, user.getEmail());
            statement.setString(3, user.getCountry());
            statement.setInt(4, user.getId());

            rowUpdated = statement.executeUpdate() > 0;
        }
        return rowUpdated;
    }*/

    private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }

/*    public User checkLogin(String email, String password) {
    }*/
}
