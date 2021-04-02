package com.shop.biz;


import com.shop.dao.CommentMapper;
import com.shop.entity.Comment;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class CommentBiz {
    @Resource
    private CommentMapper commentMapper;
    //根据用户Id,获得用户所有评论列表
    public List<Comment> findAll(int userId,int pageNum,int pageSize){
        return commentMapper.selectByUserId(userId,pageNum,pageSize);
    }

    public int saveComment(Comment comment){
        return commentMapper.insertSelective(comment);
    }

    public List<Comment> findAllCommentByUserId(int userId){
        return commentMapper.selectAllCommentByUserId(userId);
    }

    public List<Comment> findAllCommentByProductId(int proId){
        return commentMapper.selectAllCommentByProId(proId);
    }
}
