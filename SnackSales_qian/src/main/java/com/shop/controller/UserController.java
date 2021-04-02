package com.shop.controller;


import com.shop.biz.UserBiz;
import com.shop.entity.User;
import com.shop.util.Constants;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.UUID;

@Controller
@RequestMapping("/user")
public class UserController {
    @Resource
    private UserBiz userBiz;

    @RequestMapping("/userinfo/{userId}")
    public String userInfo(@PathVariable("userId")int userId, Model model){
        User user=userBiz.findUserById(userId);
        model.addAttribute("userInfo",user);
        return "/user/personInfo";
    }

//    @ResponseBody
//    @RequestMapping("/userInfo")
//    public User findUserInfor(HttpServletRequest request ,HttpServletResponse response){
//        String userName=request.getParameter("userName");
//        User userInfor=userBiz.findUserByUserName(userName);
//        return userInfor;
//    }


    @RequestMapping("/doLogin")
    public String doLogin(){
        return "/user/login";
    }

    @RequestMapping("/login")
    public String login(String userTel,String userPwd,HttpServletRequest request){
        String password=userBiz.login(userTel);
        if(userPwd.equals(password)){
            User user=userBiz.findUserByUserTel(userTel);
            request.getSession().setAttribute("currentUser",user);
            return "/index";
        }else{
            return "/user/login";
        }
    }


    @RequestMapping("/doRegister")
    public String doRegister(){
        return "/user/register";
    }

    @RequestMapping("/register")
    public String register(String userTel,String userPwd){
        userBiz.register(userTel,userPwd);
        return "/user/login";
    }


    @RequestMapping("/doUpdate/{userId}")
    public String doUpdata(@PathVariable("userId")int userId, HttpServletRequest request,Model model){
         User users = userBiz.findUserById(userId);
         model.addAttribute("user",users);
         return "/user/updateInfo";
    }



    @RequestMapping("/update")
    public String update(@RequestParam("img") MultipartFile file, User user){
        String fileName = UUID.randomUUID().toString();
        File newFile = new File(Constants.FILE_PATH + fileName);
        try {
            file.transferTo(newFile);
        } catch (IOException e) {
            e.printStackTrace();
        }
        user.setUserImg(fileName);
        int count=userBiz.updateByPrimaryKeySelective(user);
        int userId=user.getUserId();
        return "redirect:/user/userinfo/"+userId;
    }


    @RequestMapping("/logOut")
    public String logOut(HttpServletRequest request){
        HttpSession session=request.getSession();
        session.invalidate();
        return "/index";
    }
}
