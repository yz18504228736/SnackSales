package com.shop.controller;


import com.shop.biz.UserBiz;
import com.shop.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {
    @Resource
    private UserBiz userBiz;

    @RequestMapping("/userinfo")
    public String userInfo(Model model){
        List<User> list=userBiz.findAll();
        long count=userBiz.count();
        model.addAttribute("totalCount",count);
//        model.addAttribute("pageNum",pageNum);
        model.addAttribute("userList",list);
        return "/user/info";
    }
    @RequestMapping("/hello")
    public String hello(){
        return "/user/hello";
    }
}
