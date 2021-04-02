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
    public List<ShoppingCar> findAll(int pageNum, int pageSize, int userId){
        return shoppingCarMapper.selectByUserId(userId,pageNum,pageSize);
}

    public int save(ShoppingCar shoppingCar) {
        return shoppingCarMapper.insertSelective(shoppingCar);
    }

    public List<ShoppingCar> findAllShoppingCart(int userId) {
        return shoppingCarMapper.selectShoppingCartByUserId(userId);
    }

    public int deleteById(int shoppingcartId) {
        return shoppingCarMapper.deleteByPrimaryKey(shoppingcartId);
    }

    public ShoppingCar findShoppingCarById(int shoppingcartId) {
        return shoppingCarMapper.selectByPrimaryKey(shoppingcartId);
    }

    public ShoppingCar findShoppingCarByName(String shoppingcartProName) {
        return shoppingCarMapper.findShoppingCarByName(shoppingcartProName);
    }

    public int update(ShoppingCar shoppingCar) {
        return shoppingCarMapper.updateByPrimaryKeySelective(shoppingCar);
    }
}
