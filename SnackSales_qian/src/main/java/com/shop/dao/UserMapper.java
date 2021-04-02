package com.shop.dao;

import com.shop.entity.User;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface UserMapper {
    @Delete({
        "delete from user",
        "where user_id = #{userId,jdbcType=INTEGER}"
    })
    int deleteByPrimaryKey(Integer userId);

    @Insert({
        "insert into user (user_id, user_name, ",
        "user_truename, user_sex, ",
        "user_img, user_birth, ",
        "user_mail)",
        "values (#{userId,jdbcType=INTEGER}, #{userName,jdbcType=VARCHAR}, ",
        "#{userTruename,jdbcType=VARCHAR}, #{userSex,jdbcType=CHAR}, ",
        "#{userImg,jdbcType=VARCHAR}, #{userBirth,jdbcType=TIMESTAMP}, ",
        "#{userMail,jdbcType=VARCHAR})"
    })
    int insert(User record);

    int insertSelective(User record);

    @Select({
        "select",
        "user_id, user_name, user_truename, user_sex, user_img, user_birth, user_mail",
        "from user",
        "where user_id = #{userId,jdbcType=INTEGER}"
    })
    @ResultMap("com.shop.dao.UserMapper.BaseResultMap")
    User selectByPrimaryKey(int userId);

    @Select({
            "select",
            "user_id, user_name, user_truename, user_sex, user_img, user_birth, user_mail",
            "from user",
            "where user_id = #{userName,jdbcType=INTEGER}"
    })
    @ResultMap("com.shop.dao.UserMapper.BaseResultMap")
    User selectByUserName(String userName);




 //根据用户id查找用户
    @Select({
            "select",
            "user_id, user_name, user_truename, user_sex, user_img, user_birth, user_mail,user_pwd,user_tel",
            "from user",
            "where user_id = #{userId}"
    })
    @ResultMap("com.shop.dao.UserMapper.BaseResultMap")
    User selectByUserId(int userId);



    //根据用户手机号查询用户信息
    @Select({
            "select",
            "user_id, user_name, user_truename, user_sex, user_img, user_birth, user_mail,user_pwd,user_tel",
            "from user",
            "where user_tel = #{userTel}"
    })
    @ResultMap("com.shop.dao.UserMapper.BaseResultMap")
    User selectByUserTel(String userTel);

     //查询所有用户
     @Select({
        "select",
        "user_id, user_name, user_truename, user_sex, user_img, user_birth, user_mail,user_pwd,user_tel",
        "from user limit #{pageNum},#{pageSize}"
      })
     @ResultMap("com.shop.dao.UserMapper.BaseResultMap")
     List<User> findAll(@Param("pageNum") int pageNum, @Param("pageSize") int pageSize);

     int updateByPrimaryKeySelective(User record);

    
    @Update({
        "update user",
        "set user_name = #{userName,jdbcType=VARCHAR},",
          "user_truename = #{userTruename,jdbcType=VARCHAR},",
          "user_sex = #{userSex,jdbcType=CHAR},",
          "user_img = #{userImg,jdbcType=VARCHAR},",
          "user_birth = #{userBirth,jdbcType=TIMESTAMP},",
          "user_mail = #{userMail,jdbcType=VARCHAR}",
        "where user_id = #{userId,jdbcType=INTEGER}"
    })
    int updateByPrimaryKey(User record);

    @Select("select user_pwd from user where user_tel=#{userTel}")
    String login(String userTel);

    @Insert("insert into user (user_tel,user_pwd) values(#{userTel},#{userPwd})")
    void register(@Param("userTel") String userTel, @Param("userPwd") String userPwd);

}