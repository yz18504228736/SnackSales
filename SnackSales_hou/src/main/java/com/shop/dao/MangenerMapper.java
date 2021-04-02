package com.shop.dao;

import com.shop.entity.Mangener;
import org.apache.ibatis.annotations.*;
import org.mybatis.spring.annotation.MapperScan;

import java.util.List;

@MapperScan
public interface MangenerMapper {
    @Delete({
        "delete from mangener",
        "where mangener_id = #{mangenerId,jdbcType=INTEGER}"
    })
    int deleteByPrimaryKey(Integer mangenerId);

    @Insert({
        "insert into mangener (mangener_id, man_name, ",
        "man_pwd)",
        "values (#{mangenerId,jdbcType=INTEGER}, #{manName,jdbcType=VARCHAR}, ",
        "#{manPwd,jdbcType=VARCHAR})"
    })
    int insert(Mangener record);

    int insertSelective(Mangener record);

    @Select({
        "select",
        "mangener_id, man_name, man_pwd",
        "from mangener",
        "where mangener_id = #{mangenerId,jdbcType=INTEGER}"
    })
    @ResultMap("com.shop.dao.MangenerMapper.BaseResultMap")
    Mangener selectByPrimaryKey(Integer mangenerId);

    @Select({"select mangener_id, man_name, man_pwd from mangener"})
    @ResultMap("com.shop.dao.MangenerMapper.BaseResultMap")
    List<Mangener> findAllMangener();


    @Select({"select mangener_id, man_name, man_pwd from mangener where man_name=#{manName}"})
    @ResultMap("com.shop.dao.MangenerMapper.BaseResultMap")
    Mangener findByName(String manName);



    int updateByPrimaryKeySelective(Mangener record);

    @Update({
        "update mangener",
        "set man_name = #{manName,jdbcType=VARCHAR},",
          "man_pwd = #{manPwd,jdbcType=VARCHAR}",
        "where mangener_id = #{mangenerId,jdbcType=INTEGER}"
    })
    int updateByPrimaryKey(Mangener record);
}