package com.shop.biz;

import com.shop.dao.MenuMapper;
import com.shop.entity.Menu;
import com.shop.util.Constants;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;


@Service
public class MenuBiz {
      @Resource
      private MenuMapper menuDAO;

    public List<Menu> findAll(int page){
        return menuDAO.findAll((page-1)* Constants.PAGE_SIZE, Constants.PAGE_SIZE);
    }

    public Menu findById(int infoId){
            return menuDAO.selectByPrimaryKey(infoId);
    }

    public long findCount(){
            return menuDAO.findCount();
    }

    public void save(Menu menu){
            menuDAO.insertSelective(menu);
    }

    public void delete(Menu menu){
            menuDAO.deleteByPrimaryKey(menu.getMenuId());
    }

    public void update(Menu menu){
            menuDAO.updateByPrimaryKeySelective(menu);
    }
}
