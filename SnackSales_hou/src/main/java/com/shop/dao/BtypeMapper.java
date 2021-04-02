package com.shop.dao;

import com.shop.entity.Btype;
import org.apache.ibatis.annotations.*;
import org.mybatis.spring.annotation.MapperScan;

import java.util.List;

@MapperScan
public interface BtypeMapper {
    @Delete({
        "delete from btype",
        "where btype_id = #{btypeId,jdbcType=INTEGER}"
    })
    int deleteByPrimaryKey(Integer btypeId);

    @Insert({
        "insert into btype (btype_id, btype_name)",
        "values (#{btypeId,jdbcType=INTEGER}, #{btypeName,jdbcType=VARCHAR})"
    })
    int insert(Btype record);

    int insertSelective(Btype record);

    @Select({
        "select",
        "btype_id, btype_name",
        "from btype",
        "where btype_id = #{btypeId,jdbcType=INTEGER}"
    })
    @ResultMap("com.shop.dao.BtypeMapper.BaseResultMap")
    Btype selectByPrimaryKey(Integer btypeId);

    //获取所有的大类类别
    @Select({"select btype_id, btype_name from btype"})
    @ResultMap("com.shop.dao.BtypeMapper.BaseResultMap")
    List<Btype> selectAllBtype();

    int updateByPrimaryKeySelective(Btype record);

    @Update({
        "update btype",
        "set btype_name = #{btypeName,jdbcType=VARCHAR}",
        "where btype_id = #{btypeId,jdbcType=INTEGER}"
    })
    int updateByPrimaryKey(Btype record);
}