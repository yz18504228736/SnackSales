package com.shop.biz;

import com.shop.dao.MenutypeMapper;
import com.shop.entity.Menutype;
import com.shop.util.Constants;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Administrator on 2017/10/24.
 **/
@Service
public class MenuTypeBiz {
    @Resource
    private MenutypeMapper menuTypeDAO;
    //查询所有优质生活专区产品（分页）
    public List<Menutype> findAll(int page){
        return menuTypeDAO.findAll((page-1)* Constants.PAGE_SIZE, Constants.PAGE_SIZE);
    }
    public List<Menutype> findAlls(){
        return menuTypeDAO.findAlls();
    }

    //根据ID查询优质生活专区产品
    public Menutype findById(int menuTypeId){
        return menuTypeDAO.selectByPrimaryKey(menuTypeId);
    }
    //查询页面页码
    public long findCount(){
        return menuTypeDAO.findCount();
    }
    //添加新品优质生活产品
    public void save(Menutype menuType){
        menuTypeDAO.insert(menuType);
    }
    //删除新品优质生活产品
    public void delete(Menutype menuType){
        menuTypeDAO.deleteByPrimaryKey(menuType.getMenuTypeId());
    }
    //修改新品优质生活产品
    public void update(Menutype menuType) {
        menuTypeDAO.updateByPrimaryKeySelective(menuType);
    }
}
