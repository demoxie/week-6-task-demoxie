package com.example.week6taskdemoxie.dao;
import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
public class FriendRequestsDAO {
    private Long friendID;
    private Long userID;
    private Date dateSent;

    public FriendRequestsDAO(Long friendID, Long userID, Date dateSent) {
        this.friendID = friendID;
        this.userID = userID;
        this.dateSent = dateSent;
    }
}
