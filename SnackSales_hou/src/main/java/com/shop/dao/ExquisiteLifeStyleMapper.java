package com.shop.dao;

import com.shop.entity.ExquisiteLifeStyle;
import org.apache.ibatis.annotations.*;
import org.mybatis.spring.annotation.MapperScan;

import java.util.List;

@MapperScan
public interface ExquisiteLifeStyleMapper {
    @Delete({
        "delete from exquisite_lifestyle",
        "where lifestyle_id = #{lifestyleId,jdbcType=INTEGER}"
    })
    int deleteByPrimaryKey(Integer lifestyleId);

    @Insert({
        "insert into exquisite_lifestyle (lifestyle_id, special_type_id, ",
        "stype_id, product_id, ",
        "lifestyle_img_id)",
        "values (#{lifestyleId,jdbcType=INTEGER}, #{specialType.specialTypeId,jdbcType=INTEGER}, ",
        "#{product.stype.stypeId,jdbcType=INTEGER}, #{product.productId,jdbcType=INTEGER}, ",
        "#{lifestyleImgId,jdbcType=INTEGER})"
    })
    int insert(ExquisiteLifeStyle record);

    int insertSelective(ExquisiteLifeStyle record);

    @Select({
        "select",
        "lifestyle_id, special_type_id, stype_id, product_id, lifestyle_img_id",
        "from exquisite_lifestyle",
        "where lifestyle_id = #{lifestyleId,jdbcType=INTEGER}"
    })
    @ResultMap("com.shop.dao.ExquisiteLifeStyleMapper.BaseResultMap")
    ExquisiteLifeStyle selectByPrimaryKey(Integer lifestyleId);

    int updateByPrimaryKeySelective(ExquisiteLifeStyle record);

    @Update({
        "update exquisite_lifestyle",
        "set special_type_id = #{specialType.specialTypeId,jdbcType=INTEGER},",
          "stype_id = #{product.stype.stypeId,jdbcType=INTEGER},",
          "product_id = #{product.productId,jdbcType=INTEGER},",
          "lifestyle_img_id = #{lifestyleImgId,jdbcType=INTEGER}",
        "where lifestyle_id = #{lifestyleId,jdbcType=INTEGER}"
    })
    int updateByPrimaryKey(ExquisiteLifeStyle record);

    long findCount();

    List<ExquisiteLifeStyle> findAll(@Param("firstResult") int firstResult, @Param("maxResults") int maxResults);
}