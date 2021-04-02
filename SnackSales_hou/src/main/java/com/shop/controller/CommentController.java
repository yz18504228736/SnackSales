package com.shop.controller;


import com.shop.biz.CommentBiz;
import com.shop.entity.Comment;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/comment")
public class CommentController {
    @Resource
    private CommentBiz commentBiz;
//将查出的用户评论信息传递到页面
    @RequestMapping("/usercomment/{userId}")
    public String userComment(@PathVariable(name = "userId") int userId, Model model){
        List<Comment> list=commentBiz.findAll(userId);
        long count=list.size();
        model.addAttribute("totalCount",count);
        model.addAttribute("commentList",list);
        return "/user/comment";
    }
}
