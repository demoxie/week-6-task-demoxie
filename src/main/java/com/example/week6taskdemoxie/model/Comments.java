package com.example.week6taskdemoxie.model;

import java.util.Date;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Comments {
    private Long commentID;
    private Long postID;
    private Long userID;
    private String comment;
    private Long noOfLikes;
    private Date dateCommented;

    public Comments(Long commentID, Long postID, Long userID, String comment, Long noOfLikes, Date dateCommented) {
        this.commentID = commentID;
        this.postID = postID;
        this.userID = userID;
        this.comment = comment;
        this.noOfLikes = noOfLikes;
        this.dateCommented = dateCommented;
    }

    public Long getCommentID() {
        return commentID;
    }

    public void setCommentID(Long commentID) {
        this.commentID = commentID;
    }

    public Long getPostID() {
        return postID;
    }

    public void setPostID(Long postID) {
        this.postID = postID;
    }

    public Long getUserID() {
        return userID;
    }

    public void setUserID(Long userID) {
        this.userID = userID;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public Long getNoOfLikes() {
        return noOfLikes;
    }

    public void setNoOfLikes(Long noOfLikes) {
        this.noOfLikes = noOfLikes;
    }

    public Date getDateCommented() {
        return dateCommented;
    }

    public void setDateCommented(Date dateCommented) {
        this.dateCommented = dateCommented;
    }
}
