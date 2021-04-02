package com.shop.dao;

import com.shop.entity.ProDisplay;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface ProDisplayMapper {
    @Delete({
        "delete from pro_display",
        "where pro_display_id = #{proDisplayId,jdbcType=INTEGER}"
    })
    int deleteByPrimaryKey(Integer proDisplayId);

    @Insert({
        "insert into pro_display (pro_display_id, product_id, ",
        "pro_display_img)",
        "values (#{proDisplayId,jdbcType=INTEGER}, #{productId,jdbcType=INTEGER}, ",
        "#{proDisplayImg,jdbcType=VARCHAR})"
    })
    int insert(ProDisplay record);

    int insertSelective(ProDisplay record);

    @Select({
        "select",
        "pro_display_id, product_id, pro_display_img",
        "from pro_display",
        "where pro_display_id = #{proDisplayId,jdbcType=INTEGER}"
    })
    @ResultMap("com.shop.dao.ProDisplayMapper.BaseResultMap")
    ProDisplay selectByPrimaryKey(Integer proDisplayId);

    @Select("SELECT pro_display_id,pro_display_img,product_id FROM pro_display WHERE product_id = #{productId}")
    @ResultMap("com.shop.dao.ProDisplayMapper.BaseResultMap")
    List<ProDisplay> findAllByProductId(int productId);

    int updateByPrimaryKeySelective(ProDisplay record);

    @Update({
        "update pro_display",
        "set product_id = #{productId,jdbcType=INTEGER},",
          "pro_display_img = #{proDisplayImg,jdbcType=VARCHAR}",
        "where pro_display_id = #{proDisplayId,jdbcType=INTEGER}"
    })
    int updateByPrimaryKey(ProDisplay record);
}