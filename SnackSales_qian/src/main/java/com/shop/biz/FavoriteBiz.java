package com.shop.biz;


import com.shop.dao.FavoriteMapper;
import com.shop.entity.Favorite;
import com.shop.entity.ShoppingCar;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class FavoriteBiz {
    @Resource
    private FavoriteMapper favoriteMapper;

    public List<Favorite> findAll(int userId,int pageNum,int pageSize){
       return favoriteMapper.selectByUserId(userId,pageNum,pageSize);
    }

    public List<Favorite> findAllByUserId(int userId) {
        return favoriteMapper.findAllByUserId(userId);
    }

//    public int save(Favorite favorite) {
//        return favoriteMapper.insertSelective(favorite);
//    }

    public void  save(ShoppingCar shoppingCar) {
        Favorite favorite = new Favorite();
        favorite.setFavoriteProImg(shoppingCar.getShoppingcartProImg());
        favorite.setFavoriteProName(shoppingCar.getShoppingcartProName());
        favorite.setFavoriteProSize(shoppingCar.getShoppingcartProSize());
        favorite.setFavoriteProPrice(shoppingCar.getShoppingcartProPrice());
        favorite.setUser(shoppingCar.getUser());
        int row = favoriteMapper.insertSelective(favorite);
        if (row > 0) {
            System.out.println(row);
        }
    }

    public int deleteById(int favoriteId) {
        return favoriteMapper.deleteByPrimaryKey(favoriteId);
    }
}
