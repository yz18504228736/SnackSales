package com.shop.controller;


import com.shop.biz.FavoriteBiz;
import com.shop.entity.Favorite;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/favorite")
public class FavoriteController {
    @Resource
    private FavoriteBiz favoriteBiz;

    @RequestMapping("/userfavorite/{userId}")
    public String userFavorite(@PathVariable(name = "userId") int userId, Model model){
        List<Favorite> list=favoriteBiz.findAll(userId);
        long count=list.size();
        model.addAttribute("totalCount",count);
        model.addAttribute("favoriteList",list);
        return "/user/favorite";
    }
}
