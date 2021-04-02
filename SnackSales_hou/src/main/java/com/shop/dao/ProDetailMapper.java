package com.shop.dao;

import com.shop.entity.ProDetail;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface ProDetailMapper {
    @Delete({
        "delete from pro_detail",
        "where pro_detail_id = #{proDetailId,jdbcType=INTEGER}"
    })
    int deleteByPrimaryKey(Integer proDetailId);

    @Insert({
        "insert into pro_detail (pro_detail_id, product_id, ",
        "pro_detail_img)",
        "values (#{proDetailId,jdbcType=INTEGER}, #{productId,jdbcType=INTEGER}, ",
        "#{proDetailImg,jdbcType=VARCHAR})"
    })
    int insert(ProDetail record);

    int insertSelective(ProDetail record);

    @Select({
        "select",
        "pro_detail_id, product_id, pro_detail_img",
        "from pro_detail",
        "where pro_detail_id = #{proDetailId,jdbcType=INTEGER}"
    })
    @ResultMap("com.shop.dao.ProDetailMapper.BaseResultMap")
    ProDetail selectByPrimaryKey(Integer proDetailId);

    @Select("SELECT pro_detail_id,pro_detail_img,product_id FROM pro_detail WHERE product_id = #{productId}")
    @ResultMap("com.shop.dao.ProDetailMapper.BaseResultMap")
    List<ProDetail> findAllByProductId(int productId);

    int updateByPrimaryKeySelective(ProDetail record);

    @Update({
        "update pro_detail",
        "set product_id = #{productId,jdbcType=INTEGER},",
          "pro_detail_img = #{proDetailImg,jdbcType=VARCHAR}",
        "where pro_detail_id = #{proDetailId,jdbcType=INTEGER}"
    })
    int updateByPrimaryKey(ProDetail record);
}