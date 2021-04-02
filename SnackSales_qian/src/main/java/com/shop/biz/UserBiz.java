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
    public List<User> findAll(int pageNum,int pageSize){
        return userMapper.findAll(pageNum, pageSize);
    }
    //登录
    public String login(String userTel){
        return userMapper.login(userTel);
    }
    //注册
    public void register(String userTel,String userPwd){
        userMapper.register(userTel,userPwd);
    }
    //根据用户手机号查询用户
    public User findUserByUserTel(String userTel){
        return userMapper.selectByUserTel(userTel);
    }
    //修改个人信息
    public int updateByPrimaryKeySelective(User user){
        return userMapper.updateByPrimaryKeySelective(user);
    }
}
