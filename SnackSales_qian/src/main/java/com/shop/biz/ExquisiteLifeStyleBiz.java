package com.shop.biz;

import com.shop.dao.ExquisiteLifeStyleMapper;
import com.shop.entity.ExquisiteLifeStyle;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;


@Service
public class ExquisiteLifeStyleBiz {
     @Resource
     private ExquisiteLifeStyleMapper exquisiteLifeStyleDAO;

    //根据ID查询优质生活专区产品
    public ExquisiteLifeStyle findById(int lifestyleId){
        return exquisiteLifeStyleDAO.selectByPrimaryKey(lifestyleId);
    }

    //添加新品优质生活产品
    public void save(ExquisiteLifeStyle exquisiteLifeStyle){
        exquisiteLifeStyleDAO.insert(exquisiteLifeStyle);
    }
    //删除新品优质生活产品
    public void delete(ExquisiteLifeStyle exquisiteLifeStyle){
        exquisiteLifeStyleDAO.deleteByPrimaryKey(exquisiteLifeStyle.getLifestyleId());
    }
    //修改新品优质生活产品
    public void update(ExquisiteLifeStyle exquisiteLifeStyle) {
        exquisiteLifeStyleDAO.updateByPrimaryKey(exquisiteLifeStyle);
    }

    public List<ExquisiteLifeStyle>findbyspecialTypeID7(){
        return exquisiteLifeStyleDAO.findbyspecialTypeID7();
    }

    public List<ExquisiteLifeStyle>findbyspecialTypeID8(){
        return exquisiteLifeStyleDAO.findbyspecialTypeID8();
    }

    public List<ExquisiteLifeStyle>findbyspecialTypeID9(){
        return exquisiteLifeStyleDAO.findbyspecialTypeID9();
    }
}
