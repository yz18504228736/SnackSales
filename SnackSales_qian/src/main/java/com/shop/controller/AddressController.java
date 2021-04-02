package com.shop.controller;

import com.shop.biz.AddressBiz;
import com.shop.entity.Address;
import com.shop.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
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
        model.addAttribute("addressList",addressList);
        return "/user/address";
    }
    @RequestMapping("/delete/{addressId}")
    public String delete(@PathVariable("addressId")int addressId){
           Address address = addressBiz.findAdressById(addressId);
           addressBiz.delete(address);
           return "redirect:/user/address";
    }
    @RequestMapping("/preUpdate/{addressId}")
    public String preUpdateAddress(@PathVariable("addressId")int addressId,Model model){
          Address address = addressBiz.findAdressById(addressId);
          model.addAttribute("address",address);
          return "redirect:/address/update";
    }
    @RequestMapping("/update")
    public String update(Address address, HttpSession session){
          User user = (User)session.getAttribute("currentUser");
          address.setUser(user);
          addressBiz.update(address);
        return "redirect:/user/address";
    }
}
