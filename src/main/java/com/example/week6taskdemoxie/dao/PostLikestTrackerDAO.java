package com.example.week6taskdemoxie.dao;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PostLikestTrackerDAO {
    private Long postID;
    private Long userID;

    public PostLikestTrackerDAO(Long postID, Long userID) {
        this.postID = postID;
        this.userID = userID;
    }
}
