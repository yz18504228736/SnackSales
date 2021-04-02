package com.shop.dao;

import com.shop.entity.Size;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface SizeMapper {
    @Delete({
        "delete from size",
        "where size_id = #{sizeId,jdbcType=INTEGER}"
    })
    int deleteByPrimaryKey(Integer sizeId);

    @Insert({
        "insert into size (size_id, product_id, ",
        "size_name)",
        "values (#{sizeId,jdbcType=INTEGER}, #{productId,jdbcType=INTEGER}, ",
        "#{sizeName,jdbcType=VARCHAR})"
    })
    int insert(Size record);

    int insertSelective(Size record);

    @Select("select size_id,size_name,product_id FROM size")
    @ResultMap("com.shop.dao.SizeMapper.BaseResultMap")
    List<Size> findAllSize();



    @Select({
        "select",
        "size_id, product_id, size_name",
        "from size",
        "where size_id = #{sizeId,jdbcType=INTEGER}"
    })
    @ResultMap("com.shop.dao.SizeMapper.BaseResultMap")
    Size selectByPrimaryKey(Integer sizeId);

    @Select("select size_id,size_name,product_id from size as s WHERE product_id = #{productId}")
    @ResultMap("com.shop.dao.SizeMapper.BaseResultMap")
    List<Size> findAllSizeByProductId(int productId);

    int updateByPrimaryKeySelective(Size record);

    @Update({
        "update size",
        "set product_id = #{productId,jdbcType=INTEGER},",
          "size_name = #{sizeName,jdbcType=VARCHAR}",
        "where size_id = #{sizeId,jdbcType=INTEGER}"
    })
    int updateByPrimaryKey(Size record);
}