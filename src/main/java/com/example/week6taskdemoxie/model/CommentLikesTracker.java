package com.example.week6taskdemoxie.model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CommentLikesTracker {
    private Long commentID;
    private Long userID;

    public CommentLikesTracker(Long commentID, Long userID) {
        this.commentID = commentID;
        this.userID = userID;
    }
}
