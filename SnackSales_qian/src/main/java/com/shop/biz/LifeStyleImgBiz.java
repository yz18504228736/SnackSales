package com.shop.biz;

import com.shop.dao.LifeStyleImgMapper;
import com.shop.entity.LifeStyleImg;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class LifeStyleImgBiz {
    @Resource
    private LifeStyleImgMapper lifeStyleImgDAO;


    public LifeStyleImg findByName(String name){
        return lifeStyleImgDAO.selectByName(name);
    }

}
