package com.shop.biz;

import com.shop.dao.NewArrivalMapper;
import com.shop.entity.NewArrival;
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

    //根据ID查询新品专区产品
    public NewArrival findById(int newArrivalId){
            return newArrivalDAO.selectByPrimaryKey(newArrivalId);
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

    public List<NewArrival>findbyspecialTypeID1(){
        return newArrivalDAO.findbyspecialTypeID1();
    }

    public List<NewArrival>findbyspecialTypeID2(){
        return newArrivalDAO.findbyspecialTypeID2();
    }

    public List<NewArrival>findbyspecialTypeID3(){
        return newArrivalDAO.findbyspecialTypeID3();
    }

    public List<NewArrival>findbyspecialTypeID4(){
        return newArrivalDAO.findbyspecialTypeID4();
    }

    public List<NewArrival>findbyspecialTypeID5(){
        return newArrivalDAO.findbyspecialTypeID5();
    }

    public List<NewArrival>findbyspecialTypeID6(){
        return newArrivalDAO.findbyspecialTypeID6();
    }

}
