package com.shop.biz;

import com.shop.dao.SpecialTypeMapper;
import com.shop.entity.SpecialType;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class SpecialTypeBiz {
        @Resource
        private SpecialTypeMapper specialTypeMapper;

        //查询所有优质专场以及新品专区分类信息
    public List<SpecialType> findAllSpecialType(){
        return specialTypeMapper.selectAllSpecialType();
    }

    //增加某个优质专场以及新品专区分类信息
    public int saveSpecialType(SpecialType specialType){
        return specialTypeMapper.insertSelective(specialType);
    }

    //根据专区分类Id删除某个优质专场以及新品专区分类信息
    public int delectSpecialType(int specialTypeId){
        return specialTypeMapper.deleteByPrimaryKey(specialTypeId);
    }

    //根据id查找对应某个优质专场以及新品专区分类信息
    public SpecialType findSpecialTypeById(int specialTypeById){
        return specialTypeMapper.selectByPrimaryKey(specialTypeById);
    }

    //修改某个优质专场以及新品专区分类信息
    public int updateSpecialType(SpecialType specialType){
        return specialTypeMapper.updateByPrimaryKey(specialType);
    }
}
