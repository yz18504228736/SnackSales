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
    public List<Comment> findAll(int userId){
        return commentMapper.selectByUserId(userId);
    }
}
