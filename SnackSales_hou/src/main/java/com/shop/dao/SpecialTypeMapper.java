package com.shop.dao;

import com.shop.entity.SpecialType;
import org.apache.ibatis.annotations.*;
import org.mybatis.spring.annotation.MapperScan;

import java.util.List;

/******
 * by jfan
 */
@MapperScan
public interface SpecialTypeMapper {
    //根据id删除某个优质专场以及新品专区分类信息
    @Delete({
        "delete from special_type",
        "where special_type_id = #{specialTypeId,jdbcType=INTEGER}"
    })
    int deleteByPrimaryKey(Integer specialTypeId);


    //增加某个优质专场以及新品专区分类信息
    @Insert({
        "insert into special_type (special_type_id, special_type_name)",
        "values (#{specialTypeId,jdbcType=INTEGER}, #{specialTypeName,jdbcType=VARCHAR})"
    })
    int insert(SpecialType record);

    int insertSelective(SpecialType record);

    //根据id查询优质专场以及新品专区分类信息
    @Select({
        "select",
        "special_type_id, special_type_name",
        "from special_type",
        "where special_type_id = #{specialTypeId,jdbcType=INTEGER}"
    })
    @ResultMap("com.shop.dao.SpecialTypeMapper.BaseResultMap")
    SpecialType selectByPrimaryKey(Integer specialTypeId);

    //查询所有优质专场以及新品专区分类信息
    @Select({"select special_type_id, special_type_name from special_type"})
    @ResultMap("com.shop.dao.SpecialTypeMapper.BaseResultMap")
    List<SpecialType> selectAllSpecialType();

    int updateByPrimaryKeySelective(SpecialType record);


    //修改某个优质专场以及新品专区分类信息
    @Update({
        "update special_type",
        "set special_type_name = #{specialTypeName,jdbcType=VARCHAR}",
        "where special_type_id = #{specialTypeId,jdbcType=INTEGER}"
    })
    int updateByPrimaryKey(SpecialType record);
}