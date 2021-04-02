package com.shop.entity.VO;

import com.shop.entity.Comment;
import com.shop.entity.ProDisplay;

public class CommentVo {
    private ProDisplay display;

    private Comment comment;

    public ProDisplay getDisplay() {
        return display;
    }

    public void setDisplay(ProDisplay display) {
        this.display = display;
    }

    public Comment getComment() {
        return comment;
    }

    public void setComment(Comment comment) {
        this.comment = comment;
    }
}
