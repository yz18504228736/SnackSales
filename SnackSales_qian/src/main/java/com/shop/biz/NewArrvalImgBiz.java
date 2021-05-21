package com.shop.biz;

import com.shop.dao.NewArrvalImgMapper;
import com.shop.entity.NewArrvalImg;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;


@Service
public class NewArrvalImgBiz {
    @Resource
    private NewArrvalImgMapper newArrvalImgDAO;

    public NewArrvalImg findByName(String name){
        return newArrvalImgDAO.selectByName(name);
    }
}
