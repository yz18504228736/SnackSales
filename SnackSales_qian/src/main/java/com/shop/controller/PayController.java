package com.shop.controller;

import com.shop.biz.AddressBiz;
import com.shop.biz.ShoppingcarBiz;
import com.shop.entity.Address;
import com.shop.entity.ShoppingCar;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;


@Controller
@RequestMapping("/pay")
public class PayController {
    @Resource
    private AddressBiz addressBiz;
    @Resource
    private ShoppingcarBiz shoppingcarBiz;

    @RequestMapping("/list/{userId}")
    public String userAddressList(@PathVariable(name = "userId") int userId, Model model){
        List<Address> addressList= addressBiz.findAddressByUserId(userId);
        model.addAttribute("addressList",addressList);
        List<ShoppingCar> shoppingCarList=shoppingcarBiz.findAllShoppingCart(userId);
        model.addAttribute("shoppingCarList",shoppingCarList);
        return "/user/pay";
    }
}
