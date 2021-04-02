package com.shop.controller;


import com.shop.biz.ShoppingcarBiz;
import com.shop.biz.UserBiz;
import com.shop.entity.ShoppingCar;
import com.shop.entity.User;
import com.shop.util.ResultModel;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
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
    public String usershoppingcar(@RequestParam(value = "pageNum", defaultValue = "0") int pageNum, @RequestParam(value = "pageSize", defaultValue = "10")int pageSize, @PathVariable("userId")int userId, Model model){
            List<ShoppingCar> list=shoppingcarBiz.findAll(pageNum,pageSize,userId);
            User user=userBiz.findUserById(userId);
            model.addAttribute("user",user);
            model.addAttribute("shoppingcartList",list);
            return "/user/shoppingcar";
    }

    @RequestMapping("/selectShoppingCartByUser/{userId}")
    public String userShoppingCart(@PathVariable("userId") int userId,Model model){
        List<ShoppingCar> shoppingCarList=shoppingcarBiz.findAllShoppingCart(userId);
        double totalMoney = 0;
        for (ShoppingCar shoppingCar :shoppingCarList) {
            double money = shoppingCar.getShoppingcartProNum()*shoppingCar.getShoppingcartProPrice();
            totalMoney += money;
        }
        model.addAttribute("totalMoney",totalMoney);
        model.addAttribute("shoppingCarList",shoppingCarList);
        return "/goodCar/goodCar";
    }

//    @RequestMapping("/hello")
//    public String hello(){
//        return "/user/hello";
//    }

    @ResponseBody
    @RequestMapping("/add")
    public ResultModel add(HttpServletRequest request) {
        try {
            User user = (User) request.getSession().getAttribute("currentUser");
            if (null != user) {
                String shoppingcartProNum1 = request.getParameter("shoppingcartProNum");
                int shoppingcartProNum = Integer.parseInt(shoppingcartProNum1);
                String shoppingcartProPrice1 = request.getParameter("shoppingcartProPrice");
                double shoppingcartProPrice = Double.parseDouble(shoppingcartProPrice1);
                String shoppingcartProName = request.getParameter("shoppingcartProName");
                String shoppingcartProSize = request.getParameter("shoppingcartProSize");
                String shoppingcartProImg = request.getParameter("shoppingcartProImg");
                ShoppingCar shoppingCar = shoppingcarBiz.findShoppingCarByName(shoppingcartProName);
                int row = 0;
                if (null != shoppingCar) {
                    shoppingCar.setShoppingcartProNum(shoppingCar.getShoppingcartProNum() + shoppingcartProNum);
                    row = shoppingcarBiz.update(shoppingCar);
                } else if (null == shoppingCar) {
                    shoppingCar = new ShoppingCar();
                    shoppingCar.setUser(user);
                    shoppingCar.setShoppingcartProNum(shoppingcartProNum);
                    shoppingCar.setShoppingcartProPrice(shoppingcartProPrice);
                    shoppingCar.setShoppingcartProName(shoppingcartProName);
                    shoppingCar.setShoppingcartProSize(shoppingcartProSize);
                    shoppingCar.setShoppingcartProImg(shoppingcartProImg);
                    row = shoppingcarBiz.save(shoppingCar);
                }
                if (row <= 0) {
                    return ResultModel.createFailModel("添加购物车失败");
                }
            } else {
                return ResultModel.createFailModel("你还未登录");
            }
        } catch (Exception e) {
            e.printStackTrace();
            return ResultModel.createFailModel("添加购物车失败");
        }
       return ResultModel.createSuccessModel("添加购物车成功");
    }

    @RequestMapping("/deteleById/{shoppingcartId}")
    public String deteleById(@PathVariable("shoppingcartId") int shoppingcartId, HttpServletRequest request) {
        User user = (User) request.getSession().getAttribute("currentUser");
        int userId = user.getUserId();
        int row = shoppingcarBiz.deleteById(shoppingcartId);
        return "redirect:/shoppingcar/selectShoppingCartByUser/" + userId;
    }


}
