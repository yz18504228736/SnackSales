package com.shop.biz;

import com.shop.dao.BtypeMapper;
import com.shop.entity.Btype;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * 大类管理biz层
 * dengkungang
 */
@Service
public class BtypeBiz {

    @Resource
    private BtypeMapper btypeMapper;

    //获取所有大类类型
    public List<Btype> findAllBtype(){
        return btypeMapper.selectAllBtype();
    }

//    根据大类的Id查询对应的大类信息
    public Btype findAllBtypeById(int BtypeId) {
        return btypeMapper.selectByPrimaryKey(BtypeId);
    }

    //增加大类类型
    public int saveBtype(Btype btype){
        return btypeMapper.insert(btype);
    }

    //删除大类类型
    public int deleteBtypeBybTypeId(int bTypeId){
        return btypeMapper.deleteByPrimaryKey(bTypeId);
    }

    //修改大类类型
    public int updateBtype(Btype btype){
        return btypeMapper.updateByPrimaryKey(btype);
    }
}
