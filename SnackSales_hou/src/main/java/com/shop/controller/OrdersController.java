package com.shop.controller;


import com.shop.biz.OrdersBiz;
import com.shop.entity.OrderList;
import com.shop.entity.Orders;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/orders")
public class OrdersController {
    @Resource
    private OrdersBiz ordersBiz;

    @RequestMapping("/userorders/{userId}")
    public String userOrders(@PathVariable("userId")int userId, Model model){
        List<OrderList> list= ordersBiz.findAllOrders(userId);
        model.addAttribute("ordersList",list);
        return "/user/orders";

    }
    @RequestMapping("/bought")
    public String bought(Model model,@RequestParam(value = "pageNum",defaultValue = "1") int pageNum){
        List<Orders> list= ordersBiz.findBought(pageNum);
        long count=ordersBiz.count();
        model.addAttribute("totalCount",count);
        model.addAttribute("boughtList",list);
        model.addAttribute("pageNum",pageNum);
        return "/user/bought";
    }

   @RequestMapping("/bestseller")
    public String bestSeller(Model model)throws Exception{
        List<Orders> list=ordersBiz.findBestSeller();
        model.addAttribute("bestSellerList",list);
        return "/user/bestseller";
   }
}
