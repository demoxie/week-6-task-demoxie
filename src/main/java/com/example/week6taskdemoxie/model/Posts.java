package com.example.week6taskdemoxie.model;

import java.util.Date;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Posts {
    private Long postID;
    private Long userID;
    private String content;
    private Long noOfLikes;
    private Date datePosted;

    public Posts(Long postID, Long userID, String content, Long noOfLikes, Date datePosted) {
        this.postID = postID;
        this.userID = userID;
        this.content = content;
        this.noOfLikes = noOfLikes;
        this.datePosted = datePosted;
    }

}
