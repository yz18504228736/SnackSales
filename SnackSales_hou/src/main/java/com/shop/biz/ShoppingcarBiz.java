package com.shop.biz;


import com.shop.dao.ShoppingCarMapper;
import com.shop.entity.ShoppingCar;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ShoppingcarBiz {
    @Resource
    private ShoppingCarMapper shoppingCarMapper;


//根据用户Id查询用户购物车订单
    public List<ShoppingCar> findAll(int userId){
        return shoppingCarMapper.selectByUserId(userId);
    }
}
