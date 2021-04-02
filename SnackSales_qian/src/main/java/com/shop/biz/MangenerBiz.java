package com.shop.biz;

import com.shop.dao.MangenerMapper;
import com.shop.entity.Mangener;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class MangenerBiz {

        @Resource
        private MangenerMapper mangenerMapper;
        //根据管理员Id获取当前的管理员信息
        public Mangener findByMangenerId(int mangenerId){
            return mangenerMapper.selectByPrimaryKey(mangenerId);
        }

        //根据用户名获取对应的密码
        public Mangener findMangenerByName(String manName){
            return mangenerMapper.findByName(manName);
        }

        //根据管理员Id删除当前管理员
        public int deleteMangenerById(int mangenerId){
            return mangenerMapper.deleteByPrimaryKey(mangenerId);
        }

        //根据id修改当前管理员信息
        public int updateMangener(Mangener mangener){
            return mangenerMapper.updateByPrimaryKeySelective(mangener);
        }

        //增加一个管理员
        public int saveMangener(Mangener mangener){
            return mangenerMapper.insertSelective(mangener);
        }

        //获取所有的管理员
        public List<Mangener> findAllMangener(){
            return mangenerMapper.findAllMangener();
        }
}
