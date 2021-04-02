package com.shop.dao;

import com.shop.entity.Product;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface ProductMapper {
    @Delete({
        "delete from product",
        "where product_id = #{productId,jdbcType=INTEGER}"
    })
    int deleteByPrimaryKey(Integer productId);

    @Insert({
        "insert into product (product_id, stype_id, ",
        "product_name, product_pro, ",
        "product_brand, product_num, ",
        "product_from, product_price, ",
        "product_time, product_desc, ",
        "product_state)",
        "values (#{productId,jdbcType=INTEGER}, #{stypeId,jdbcType=INTEGER}, ",
        "#{productName,jdbcType=VARCHAR}, #{productPro,jdbcType=VARCHAR}, ",
        "#{productBrand,jdbcType=VARCHAR}, #{productNum,jdbcType=INTEGER}, ",
        "#{productFrom,jdbcType=VARCHAR}, #{productPrice,jdbcType=DECIMAL}, ",
        "#{productTime,jdbcType=TIMESTAMP}, #{productDesc,jdbcType=VARCHAR}, ",
        "#{productState,jdbcType=VARCHAR})"
    })
    int insert(Product record);

    int insertSelective(Product record);

//    根据产品Id查询对应产品的详细信息
    @Select("select * from product where product_id = #{productId}")
    @ResultMap("com.shop.dao.ProductMapper.BaseResultMap")
    Product selectByPrimaryKey(Integer productId);

    // 根据产品名查询对应产品的详细信息
    @Select("select * from product where product_name = #{proName}")
    @ResultMap("com.shop.dao.ProductMapper.BaseResultMap")
    Product findByProName(String proName);

//    查询所有的分页产品信息
    @Select("SELECT * FROM product limit #{page},20")
    @ResultMap("com.shop.dao.ProductMapper.BaseResultMap")
    List<Product> findAllProductByPage(int page);

    //    查询所有的产品信息
    @Select("SELECT * FROM product")
    @ResultMap("com.shop.dao.ProductMapper.BaseResultMap")
    List<Product> findAllProduct();

//    根据大类的Id查询对应的所有的产品信息
    @Select("select * from product WHERE stype_id in (select stype_id FROM stype WHERE btype_id = #{btypeId})")
    @ResultMap("com.shop.dao.ProductMapper.BaseResultMap")
    List<Product> findAllProductByBtypeId(int btypeId);

//    根据小类的Id查询对应的产品
    @Select("select * from product where stype_id = #{stypeId}")
    @ResultMap("com.shop.dao.ProductMapper.BaseResultMap")
    List<Product> findAllProductByStypeId(int stypeId);

    int updateByPrimaryKeySelective(Product record);

    //    查询产品表中的所有记录条数
    @Select("select count(product_id) from product")
    long findCount();

    @Update({
        "update product",
        "set stype_id = #{stypeId,jdbcType=INTEGER},",
          "product_name = #{productName,jdbcType=VARCHAR},",
          "product_pro = #{productPro,jdbcType=VARCHAR},",
          "product_brand = #{productBrand,jdbcType=VARCHAR},",
          "product_num = #{productNum,jdbcType=INTEGER},",
          "product_from = #{productFrom,jdbcType=VARCHAR},",
          "product_price = #{productPrice,jdbcType=DECIMAL},",
          "product_time = #{productTime,jdbcType=TIMESTAMP},",
          "product_desc = #{productDesc,jdbcType=VARCHAR},",
          "product_state = #{productState,jdbcType=VARCHAR}",
        "where product_id = #{productId,jdbcType=INTEGER}"
    })
    int updateByPrimaryKey(Product record);
}