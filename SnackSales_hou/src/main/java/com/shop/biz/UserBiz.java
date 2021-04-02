package com.shop.biz;

import com.shop.dao.UserMapper;
import com.shop.entity.User;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class UserBiz {

    @Resource
    private UserMapper userMapper;
    //根据客户id 获取客户
    public User findUserById(int id){
        return userMapper.selectByUserId(id);
    }
    //获取所有用户信息
    public List<User> findAll(){
        return userMapper.findAll();
    }

    public long count(){
        return userMapper.count();
    }
}
