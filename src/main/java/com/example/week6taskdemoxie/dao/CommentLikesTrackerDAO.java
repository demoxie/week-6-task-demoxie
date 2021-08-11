package com.example.week6taskdemoxie.dao;
import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
public class CommentLikesTrackerDAO {
    private Long postID;
    private Long commentID;
    private Long userID;
    private Long noOfLikes;
    private Date commentDate;

    public CommentLikesTrackerDAO(Long postID, Long commentID, Long userID, Long noOfLikes, Date commentDate) {
        this.postID = postID;
        this.commentID = commentID;
        this.userID = userID;
        this.noOfLikes = noOfLikes;
        this.commentDate = commentDate;
    }
}
