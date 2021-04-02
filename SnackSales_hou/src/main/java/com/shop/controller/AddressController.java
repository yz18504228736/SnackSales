package com.shop.controller;

import com.shop.biz.AddressBiz;
import com.shop.entity.Address;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/address")
public class AddressController {

    @Resource
    private AddressBiz addressBiz;

    //根据客户id获取客户的常用发货地址
    @RequestMapping("/list/{userId}")
    public String userAddressList(@PathVariable(name = "userId") int userId, Model model){
       List<Address> addressList= addressBiz.findAddressByUserId(userId);
        int count=addressList.size();
        model.addAttribute("totalCount",count);
        model.addAttribute("pageNum",1);
        model.addAttribute("addressList",addressList);
        return "/user/address";
    }
}
