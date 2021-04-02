package com.shop.controller;


import com.shop.biz.ShoppingcarBiz;
import com.shop.biz.UserBiz;
import com.shop.entity.ShoppingCar;
import com.shop.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/shoppingcar")
public class ShoppingcarController {
    @Resource
    private ShoppingcarBiz shoppingcarBiz;
    @Resource
    private UserBiz userBiz;

    //根据Id找到用户的购物车信息
    @RequestMapping("/usershoppingcart/{userId}")
    public String usershoppingcar(@PathVariable("userId")int userId, Model model){
            List<ShoppingCar> list=shoppingcarBiz.findAll(userId);
            User user=userBiz.findUserById(userId);
            long count=list.size();
            model.addAttribute("totalCount",count);
            model.addAttribute("user",user);
            model.addAttribute("shoppingcartList",list);
            return "/user/shoppingcar";
    }
    @RequestMapping("/hello")
    public String hello(){
        return "/user/hello";
    }
}
