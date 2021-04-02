package com.shop.biz;

import com.shop.dao.StypeMapper;
import com.shop.entity.Stype;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * 小类管理层
 * dnegkungang
 */
@Service
public class StypeBiz {
    @Resource
    private StypeMapper stypeMapper;

//  动态添加小类
    public int saveStype(Stype stype) {
        return stypeMapper.insertSelective(stype);
    }

//    根据小类的ID删除对应的小类
    public int deleteStypeById(int stypeId) {
        return stypeMapper.deleteByPrimaryKey(stypeId);
    }

//    查看所有小类的详细信息
    public List<Stype> findAll() {
        return stypeMapper.findAll();
    }
//    根据大类的Id查询对应的所有小类
    public List<Stype> findAllByBtypeId(int btypeId) {
        return stypeMapper.findAllByBtypeId(btypeId);
    }

//    根据小类的Id查询对应的小类详细信息
    public Stype findStypeByStypeId(int stypeId) {
        return stypeMapper.selectByPrimaryKey(stypeId);
    }

//    动态修改小类信息
    public int updateStype(Stype stype) {
        return stypeMapper.updateByPrimaryKeySelective(stype);
    }
}
