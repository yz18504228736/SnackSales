package com.shop.dao;

import com.shop.entity.Stype;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface StypeMapper {
    @Delete({
        "delete from stype",
        "where stype_id = #{stypeId,jdbcType=INTEGER}"
    })
    int deleteByPrimaryKey(Integer stypeId);

    @Insert({
        "insert into stype (stype_id, stype_name, ",
        "btype_id)",
        "values (#{stypeId,jdbcType=INTEGER}, #{stypeName,jdbcType=VARCHAR}, ",
        "#{btypeId,jdbcType=INTEGER})"
    })
    int insert(Stype record);

    int insertSelective(Stype record);

    @Select({
        "select",
        "stype_id, stype_name, btype_id",
        "from stype",
        "where stype_id = #{stypeId,jdbcType=INTEGER}"
    })
    @ResultMap("com.shop.dao.StypeMapper.BaseResultMap")
    Stype selectByPrimaryKey(Integer stypeId);

    @Select("SELECT stype_id,stype_name,btype_id from stype")
    @ResultMap("com.shop.dao.StypeMapper.BaseResultMap")
    List<Stype> findAll();

    @Select("SELECT stype_id,stype_name,btype_id from stype WHERE btype_id = #{btypeId}")
    @ResultMap("com.shop.dao.StypeMapper.BaseResultMap")
    List<Stype> findAllByBtypeId(int btypeId);

    int updateByPrimaryKeySelective(Stype record);

    @Update({
        "update stype",
        "set stype_name = #{stypeName,jdbcType=VARCHAR},",
          "btype_id = #{btypeId,jdbcType=INTEGER}",
        "where stype_id = #{stypeId,jdbcType=INTEGER}"
    })
    int updateByPrimaryKey(Stype record);
}