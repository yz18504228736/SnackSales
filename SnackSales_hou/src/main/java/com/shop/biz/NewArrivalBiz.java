package com.shop.biz;

import com.shop.dao.NewArrivalMapper;
import com.shop.dao.NewArrvalImgMapper;
import com.shop.entity.NewArrival;
import com.shop.util.Constants;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by xucheng on 2017/10/23.
 **/
@Service
public class NewArrivalBiz {
      @Resource
      private NewArrivalMapper newArrivalDAO;
      @Resource
      private NewArrvalImgMapper newArrvalImgDAO;
    //查询所有新品专区产品（分页）
    public List<NewArrival> findAll(int page){
        return newArrivalDAO.findAll((page-1)* Constants.PAGE_SIZE, Constants.PAGE_SIZE);
    }
    public List<NewArrival> findAlls(){
        return newArrivalDAO.findAlls();
    }
    //根据ID查询新品专区产品
    public NewArrival findById(int newArrivalId){
            return newArrivalDAO.selectByPrimaryKey(newArrivalId);
    }
    //查询页面页码
    public long findCount(){
            return newArrivalDAO.findCount();
    }
    //添加新品专区产品
    public void save(NewArrival newArrival){
            newArrivalDAO.insert(newArrival);
    }
    //删除新品专区产品
    public void delete(NewArrival newArrival){
            newArrivalDAO.deleteByPrimaryKey(newArrival.getNewArrivalId());
    }
    //修改新品专区产品
    public void update(NewArrival newArrival) {
            newArrivalDAO.updateByPrimaryKey(newArrival);
    }
}
