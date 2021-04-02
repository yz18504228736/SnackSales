package com.shop.biz;


import com.shop.dao.FavoriteMapper;
import com.shop.entity.Favorite;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class FavoriteBiz {
    @Resource
    private FavoriteMapper favoriteMapper;

    public List<Favorite> findAll(int userId){
       return favoriteMapper.selectByUserId(userId);
    }

}
