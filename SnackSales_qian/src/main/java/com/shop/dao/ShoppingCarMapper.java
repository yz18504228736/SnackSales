package com.shop.dao;

import com.shop.entity.ShoppingCar;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface ShoppingCarMapper {
    @Delete({
        "delete from shoppingcar",
        "where shoppingcart_id = #{shoppingcartId,jdbcType=INTEGER}"
    })
    int deleteByPrimaryKey(Integer shoppingcartId);

    @Insert({
        "insert into shoppingcar (shoppingcart_id, user_id, ",
        "shoppingcart_pro_num, shoppingcart_pro_price, ",
        "shoppingcart_pro_name, shoppingcart_pro_size, ",
        "shoppingcart_pro_img)",
        "values (#{shoppingcartId,jdbcType=INTEGER}, #{userId,jdbcType=INTEGER}, ",
        "#{shoppingcartProNum,jdbcType=INTEGER}, #{shoppingcartProPrice,jdbcType=DECIMAL}, ",
        "#{shoppingcartProName,jdbcType=VARCHAR}, #{shoppingcartProSize,jdbcType=VARCHAR}, ",
        "#{shoppingcartProImg,jdbcType=VARCHAR})"
    })
    int insert(ShoppingCar record);

    int insertSelective(ShoppingCar record);

    @Select({
        "select",
        "shoppingcart_id, user_id, shoppingcart_pro_num, shoppingcart_pro_price, shoppingcart_pro_name, ",
        "shoppingcart_pro_size, shoppingcart_pro_img",
        "from shoppingcar",
        "where shoppingcart_id = #{shoppingcartId,jdbcType=INTEGER}"
    })
    @ResultMap("com.shop.dao.ShoppingCarMapper.BaseResultMap")
    ShoppingCar selectByPrimaryKey(Integer shoppingcartId);

    int updateByPrimaryKeySelective(ShoppingCar record);

    @Select({"select",
            "shoppingcart_id, user_id, shoppingcart_pro_num, shoppingcart_pro_price, shoppingcart_pro_name, ",
            "shoppingcart_pro_size, shoppingcart_pro_img",
            "from shoppingcar",
            "where shoppingcart_pro_name = #{shoppingcartProName}"})
    @ResultMap("com.shop.dao.ShoppingCarMapper.BaseResultMap")
    ShoppingCar findShoppingCarByName(String shoppingcartProName);


    //根据用户Id查询用户的购物车内订单,分页查询
    @Select({
            "select",
            "shoppingcart_id, user_id, shoppingcart_pro_num, shoppingcart_pro_price, shoppingcart_pro_name, ",
            "shoppingcart_pro_size, shoppingcart_pro_img",
            "from shoppingcar",
            "where user_id =#{userId} limit #{pageNum},#{pageSize}"
    })
    @ResultMap("com.shop.dao.ShoppingCarMapper.BaseResultMap")
    List<ShoppingCar> selectByUserId(@Param("userId") int userId, @Param("pageNum") int pageNum, @Param("pageSize") int pageSize);

    @Select({
            "select",
            "shoppingcart_id, user_id, shoppingcart_pro_num, shoppingcart_pro_price, shoppingcart_pro_name, ",
            "shoppingcart_pro_size, shoppingcart_pro_img",
            "from shoppingcar",
            "where user_id = #{user.userId,jdbcType=INTEGER}"
    })
    @ResultMap("com.shop.dao.ShoppingCarMapper.BaseResultMap")
    List<ShoppingCar> selectShoppingCartByUserId(int user_id);


    @Update({
        "update shoppingcar",
        "set user_id = #{userId,jdbcType=INTEGER},",
          "shoppingcart_pro_num = #{shoppingcartProNum,jdbcType=INTEGER},",
          "shoppingcart_pro_price = #{shoppingcartProPrice,jdbcType=DECIMAL},",
          "shoppingcart_pro_name = #{shoppingcartProName,jdbcType=VARCHAR},",
          "shoppingcart_pro_size = #{shoppingcartProSize,jdbcType=VARCHAR},",
          "shoppingcart_pro_img = #{shoppingcartProImg,jdbcType=VARCHAR}",
        "where shoppingcart_id = #{shoppingcartId,jdbcType=INTEGER}"
    })
    int updateByPrimaryKey(ShoppingCar record);

    @Delete("delete from shoppingcar")
    void clear();
}