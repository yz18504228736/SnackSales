package com.shop.biz;

import com.shop.dao.LifeStyleImgMapper;
import com.shop.entity.LifeStyleImg;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by Administrator on 2017/10/27.
 **/
@Service
public class LifeStyleImgBiz {
    @Resource
    private LifeStyleImgMapper lifeStyleImgDAO;

    public void save(LifeStyleImg lifeStyleImg){
        lifeStyleImgDAO.save(lifeStyleImg);
    }

    public LifeStyleImg findByName(String name){
        return lifeStyleImgDAO.selectByName(name);
    }

}
