package com.shop.dao;

import com.shop.entity.NewArrival;
import org.apache.ibatis.annotations.*;
import org.mybatis.spring.annotation.MapperScan;

import java.util.List;

@MapperScan
public interface NewArrivalMapper {


    @Delete({
        "delete from new_arrival",
        "where new_arrival_id = #{newArrivalId,jdbcType=INTEGER}"
    })
    int deleteByPrimaryKey(Integer newArrivalId);

    @Insert({
        "insert into new_arrival (new_arrival_id, special_type_id, ",
        "stype_id, product_id, new_arrval_img_id)",
        "values (#{newArrivalId,jdbcType=INTEGER}, #{specialType.specialTypeId,jdbcType=INTEGER}, ",
        "#{product.stype.stypeId,jdbcType=INTEGER}, #{product.productId,jdbcType=INTEGER},#{newArrvalImgId,jdbcType=INTEGER})"
    })
    int insert(NewArrival record);

    int insertSelective(NewArrival record);

    @Select({
        "select",
        "new_arrival_id, special_type_id, stype_id, product_id, new_arrval_img_id",
        "from new_arrival",
        "where new_arrival_id = #{newArrivalId,jdbcType=INTEGER}"
    })
    @ResultMap("com.shop.dao.NewArrivalMapper.BaseResultMap")
    NewArrival selectByPrimaryKey(Integer newArrivalId);

    int updateByPrimaryKeySelective(NewArrival record);

    @Update({
        "update new_arrival",
        "set special_type_id = #{specialType.specialTypeId,jdbcType=INTEGER},",
          "stype_id = #{product.stype.stypeId,jdbcType=INTEGER},product_id = #{product.productId,jdbcType=INTEGER},new_arrval_img_id = #{newArrvalImgId,jdbcType=INTEGER}",
        "where new_arrival_id = #{newArrivalId,jdbcType=INTEGER}"
    })
    int updateByPrimaryKey(NewArrival record);

    long findCount();

    List<NewArrival> findAll(@Param("firstResult") int firstResult, @Param("maxResults") int maxResults);
    List<NewArrival> findAlls();
}