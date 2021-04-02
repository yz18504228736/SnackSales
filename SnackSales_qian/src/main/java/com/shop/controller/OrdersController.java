package com.shop.controller;


import com.shop.biz.AddressBiz;
import com.shop.biz.OrderStateBiz;
import com.shop.biz.OrdersBiz;
import com.shop.biz.ShoppingcarBiz;
import com.shop.entity.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/orders")
public class OrdersController {
    @Resource
    private OrdersBiz ordersBiz;
    @Resource
    private ShoppingcarBiz shoppingcarBiz;
    @Resource
    private AddressBiz addressBiz;
    @Resource
    private OrderStateBiz orderStateBiz;


        @RequestMapping("/userorders/{userId}")
    public String userOrders(@PathVariable("userId")int userId, Model model){
        List<OrderList> list= ordersBiz.findAllOrders(userId);
        model.addAttribute("ordersList",list);
           for(OrderList orderList:list){
            System.out.println(orderList);}
        return "/user/orders";

    }
    @RequestMapping("/bought/{userId}")
    public String bought(@PathVariable("userId")int userId,Model model,@RequestParam(value = "pageNum",defaultValue = "0") int pageNum, @RequestParam(value = "pageSize",defaultValue = "10")int pageSize){
        List<Orders> list= ordersBiz.findBought(pageNum,pageSize,userId);
        model.addAttribute("boughtList",list);
        System.out.println(list.size());
        return "/user/bought";
    }

   @RequestMapping("/bestseller")
    public String bestSeller(Model model){
        List<Orders> list=ordersBiz.findBestSeller();
        model.addAttribute("bestSellerList",list);
        return "/user/bestseller";
   }

   @RequestMapping("/detail")
    public String detail(String orderName,Model model){

       try {
           orderName = new String(orderName.getBytes("ISO8859-1"), "UTF-8");
       } catch (UnsupportedEncodingException e) {
           e.printStackTrace();
       }
       List<Orders> list=ordersBiz.orderDetail(orderName);
        double price=0;
        double totalPrice=0;
        for(Orders orders:list){
            price+=orders.getOrderProNum()*orders.getOrderProPrice();
        }
        totalPrice=10+price;
        model.addAttribute("price",price);
        model.addAttribute("totalPrice",totalPrice);
        model.addAttribute("detaiList",list);
        return "/user/orderDetail";
   }

   @RequestMapping("/delete")
    public String deleteByOrderName(String orderName, HttpServletRequest request){
       try {
           orderName = new String(orderName.getBytes("ISO8859-1"), "UTF-8");
       } catch (UnsupportedEncodingException e) {
           e.printStackTrace();
       }
       User user = (User)request.getSession().getAttribute("currentUser");
        int userId=user.getUserId();
        int count=ordersBiz.deleteByOrderName(orderName);
        return "redirect:/orders/userorders/"+userId;
   }

   @RequestMapping("/orderPage")
    public String orderPage(HttpServletRequest request,Model model) throws ParseException {
        User user = (User) request.getSession().getAttribute("currentUser");
        List<ShoppingCar> shoppingCarList = shoppingcarBiz.findAllShoppingCart(user.getUserId());
        List<Address> addressList=addressBiz.findAddressByUserId(user.getUserId());
        double price=0;
        for(ShoppingCar shoppingCar:shoppingCarList){
            price+=shoppingCar.getShoppingcartProPrice()*shoppingCar.getShoppingcartProNum();
        }
        double totalPrice=price+10;
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");//设置日期格式
        String date = df.format(new Date());
        model.addAttribute("date",date);
        model.addAttribute("price",price);
        model.addAttribute("totalPrice",totalPrice);
        model.addAttribute("shoppingCarList",shoppingCarList);
        model.addAttribute("addressList",addressList);
        return "/user/pay";
   }

   @RequestMapping("/notPaid")
    public String notPaid(HttpServletRequest request){
       User user = (User) request.getSession().getAttribute("currentUser");
       String userAddressId=request.getParameter("userAddressId");
       List<ShoppingCar> shoppingCarList = shoppingcarBiz.findAllShoppingCart(user.getUserId());
//        int id=Integer.parseInt(userAddressId);
       Address address=addressBiz.findAdressByAddressId(2);
           String orderName= UUID.randomUUID().toString();
           SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");//设置日期格式
           Date date=new Date();
           String dateStr = df.format(date);
           Date mydate = null;
           try {
               mydate = df.parse(dateStr);
           } catch (ParseException e) {
               e.printStackTrace();
           }
       OrderState orderState= orderStateBiz.findById(1);
       for(ShoppingCar shoppingCar:shoppingCarList){
           Orders orders=new Orders();
           orders.setUser(shoppingCar.getUser());
           orders.setOrderProName(shoppingCar.getShoppingcartProName());
           orders.setOrderProImg(shoppingCar.getShoppingcartProImg());
           orders.setOrderProNum(shoppingCar.getShoppingcartProNum());
           orders.setOrderProSize(shoppingCar.getShoppingcartProSize());
           orders.setOrderProPrice(shoppingCar.getShoppingcartProPrice());
           orders.setOrderTime(mydate);
           orders.setAddress(address.getAddressName());
           orders.setFee(10L);
           orders.setPhonenum(address.getPhonenum());
           orders.setReceiverName(address.getReceiverName());
           orders.setOrderName(orderName);
           orders.setOrderState(orderState);
           ordersBiz.save(orders);
           shoppingcarBiz.deleteById(shoppingCar.getShoppingcartId());
    }
       List<Orders> list=ordersBiz.findByOrderName(orderName);
       double price=0;
       double totalPrice=0;
       for(Orders orders:list){
           price+=orders.getOrderProNum()*orders.getOrderProPrice();
       }
       totalPrice=10+price;
      request.setAttribute("price",price);
       request.setAttribute("totalPrice",totalPrice);
       request.setAttribute("detaiList",list);
        return "/user/orderDetail";

   }

}
