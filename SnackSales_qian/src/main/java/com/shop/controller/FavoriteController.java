package com.shop.controller;


import com.shop.biz.FavoriteBiz;
import com.shop.biz.ShoppingcarBiz;
import com.shop.biz.StypeBiz;
import com.shop.entity.Favorite;
import com.shop.entity.ShoppingCar;
import com.shop.entity.Stype;
import com.shop.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/favorite")
public class FavoriteController {
    @Resource
    private FavoriteBiz favoriteBiz;
    @Resource
    private StypeBiz stypeBiz;
    @Resource
    private ShoppingcarBiz shoppingcarBiz;

    @RequestMapping("/userfavorite/{userId}")
    public String userFavorite(@RequestParam(value = "pageNum",defaultValue = "0")int pageNum, @RequestParam(value = "pageSize",defaultValue = "10")int pageSize, @PathVariable(name = "userId") int userId, Model model){
        List<Favorite> list=favoriteBiz.findAll(userId,pageNum,pageSize);
        model.addAttribute("favoriteList",list);
        return "/user/favorite";
    }

    @RequestMapping("/list/{userId}")
    public String findProductById(@PathVariable("userId") int userId, Model model) {
        List<Favorite> favoriteList = favoriteBiz.findAllByUserId(userId);
        model.addAttribute("favoriteList",favoriteList);
        List<Stype> stypeList1 = stypeBiz.findAllByBtypeId(1);
        model.addAttribute("stypeList1",stypeList1);
        List<Stype> stypeList2 = stypeBiz.findAllByBtypeId(2);
        model.addAttribute("stypeList2",stypeList2);
        List<Stype> stypeList3 = stypeBiz.findAllByBtypeId(3);
        model.addAttribute("stypeList3",stypeList3);
        List<Stype> stypeList4 = stypeBiz.findAllByBtypeId(4);
        model.addAttribute("stypeList4",stypeList4);
        List<Stype> stypeList5 = stypeBiz.findAllByBtypeId(5);
        model.addAttribute("stypeList5",stypeList5);
        List<Stype> stypeList6 = stypeBiz.findAllByBtypeId(6);
        model.addAttribute("stypeList6",stypeList6);
        List<Stype> stypeList7 = stypeBiz.findAllByBtypeId(7);
        model.addAttribute("stypeList7",stypeList7);
        List<Stype> stypeList8 = stypeBiz.findAllByBtypeId(8);
        model.addAttribute("stypeList8",stypeList8);
        List<Stype> stypeList9 = stypeBiz.findAllByBtypeId(9);
        model.addAttribute("stypeList9",stypeList9);
        List<Stype> stypeList10 = stypeBiz.findAllByBtypeId(10);
        model.addAttribute("stypeList10",stypeList10);
        List<Stype> stypeList11 = stypeBiz.findAllByBtypeId(11);
        model.addAttribute("stypeList11",stypeList11);
        return "/user/favorite";
    }

    @RequestMapping("/delete/{favoriteId}")
    public String deleteById(@PathVariable("favoriteId") int favoriteId,HttpServletRequest request) {
        User user = (User) request.getSession().getAttribute("currentUser");
        int userId = user.getUserId();
        int row = favoriteBiz.deleteById(favoriteId);
        return "redirect:/favorite/list/" + userId;
    }

    @RequestMapping("/add/{shoppingcartId}")
    public String add(@PathVariable("shoppingcartId") int shoppingcartId,HttpServletRequest request) {
        ShoppingCar shoppingCar = shoppingcarBiz.findShoppingCarById(shoppingcartId);
        favoriteBiz.save(shoppingCar);
        int userId = shoppingCar.getUser().getUserId();
        return "redirect:/favorite/list/" + userId;
    }
}
