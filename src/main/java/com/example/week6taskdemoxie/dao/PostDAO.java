package com.example.week6taskdemoxie.dao;
import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
public class PostDAO {
    private Long postID;
    private Long userID;
    private String content;
    private Long noOfLikes;
    private Date datePosted;

    public PostDAO(Long postID, Long userID, String content, Long noOfLikes, Date datePosted) {
        this.postID = postID;
        this.userID = userID;
        this.content = content;
        this.noOfLikes = noOfLikes;
        this.datePosted = datePosted;
    }
}
