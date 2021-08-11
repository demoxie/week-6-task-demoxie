package com.example.week6taskdemoxie.dao;
import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
public class CommentsDAO {
    private Long postID;
    private Long commentID;
    private String comments;
    private Date commentDate;

    public CommentsDAO(Long postID, Long commentID, String comments, Date commentDate) {
        this.postID = postID;
        this.commentID = commentID;
        this.comments = comments;
        this.commentDate = commentDate;
    }
}
