package com.example.week6taskdemoxie.dao;
import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
public class FriendsDAO {
    private Long userID;
    private Long friendID;
    private Date friendDate;

    public FriendsDAO(Long userID, Long friendID, Date friendDate) {
        this.userID = userID;
        this.friendID = friendID;
        this.friendDate = friendDate;
    }
}
