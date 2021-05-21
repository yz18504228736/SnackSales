package com.shop.biz;

import com.shop.dao.ExquisiteLifeStyleMapper;
import com.shop.dao.LifeStyleImgMapper;
import com.shop.entity.ExquisiteLifeStyle;
import com.shop.util.Constants;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;


@Service
public class ExquisiteLifeStyleBiz {
     @Resource
     private ExquisiteLifeStyleMapper exquisiteLifeStyleDAO;
     @Resource
     private LifeStyleImgMapper lifeStyleImgDAO;
    //查询所有优质生活专区产品（分页）
    public List<ExquisiteLifeStyle> findAll(int page){
        return exquisiteLifeStyleDAO.findAll((page-1)* Constants.PAGE_SIZE, Constants.PAGE_SIZE);
    }
    //根据ID查询优质生活专区产品
    public ExquisiteLifeStyle findById(int lifestyleId){
        return exquisiteLifeStyleDAO.selectByPrimaryKey(lifestyleId);
    }
    //查询页面页码
    public long findCount(){
        return exquisiteLifeStyleDAO.findCount();
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
}
