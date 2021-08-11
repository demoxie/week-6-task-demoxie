package com.example.week6taskdemoxie.model;

import java.util.Date;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class User {
    private Long userID;
    private String firstName;
    private String lastName;
    private Date dateOfBirth;
    private String gender;
    private String userName;
    private String password;
    private String status;
    private String phoneNumber;
    private String address;
    private String profilePicsUrl;

    public User() {
    }

    public User(String firstName, String lastName, Date dateOfBirth, String gender, String userName, String password) {
        this.userID = null;
        this.firstName = firstName;
        this.lastName = lastName;
        this.dateOfBirth = dateOfBirth;
        this.gender = gender;
        this.userName = userName;
        this.password = password;
        this.status = "";
        this.phoneNumber = "";
        this.address = "";
        this.profilePicsUrl = "";
    }

}
