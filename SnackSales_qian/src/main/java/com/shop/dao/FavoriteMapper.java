package com.shop.dao;

import com.shop.entity.Favorite;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface FavoriteMapper {
    @Delete({
        "delete from favorite",
        "where favorite_id = #{favoriteId,jdbcType=INTEGER}"
    })
    int deleteByPrimaryKey(Integer favoriteId);

    @Insert({
        "insert into favorite (favorite_id, user_id, ",
        "favorite_pro_price, favorite_pro_name, ",
        "favorite_pro_size, favorite_pro_img)",
        "values (#{favoriteId,jdbcType=INTEGER}, #{userId,jdbcType=INTEGER}, ",
        "#{favoriteProPrice,jdbcType=DOUBLE}, #{favoriteProName,jdbcType=VARCHAR}, ",
        "#{favoriteProSize,jdbcType=VARCHAR}, #{favoriteProImg,jdbcType=VARCHAR})"
    })
    int insert(Favorite record);

    int insertSelective(Favorite record);

    @Select({
        "select",
        "favorite_id, user_id, favorite_pro_price, favorite_pro_name, favorite_pro_size, ",
        "favorite_pro_img",
        "from favorite",
        "where favorite_id = #{favoriteId,jdbcType=INTEGER}"
    })
    @ResultMap("com.shop.dao.FavoriteMapper.BaseResultMap")
    Favorite selectByPrimaryKey(Integer favoriteId);

    @Select({
            "select",
            "favorite_id, user_id, favorite_pro_price, favorite_pro_name, favorite_pro_size, ",
            "favorite_pro_img",
            "from favorite",
            "where user_id = #{userId,jdbcType=INTEGER} limit #{pageNum},#{pageSize}"
    })
    @ResultMap("com.shop.dao.FavoriteMapper.BaseResultMap")
    List<Favorite> selectByUserId(@Param("userId") int userId, @Param("pageNum") int pageNum, @Param("pageSize") int pageSize);

    @Select({
            "select",
            "favorite_id, user_id, favorite_pro_price, favorite_pro_name, favorite_pro_size, ",
            "favorite_pro_img",
            "from favorite",
            "where user_id = #{userId,jdbcType=INTEGER}"
    })
    @ResultMap("com.shop.dao.FavoriteMapper.BaseResultMap")
    List<Favorite> findAllByUserId(int userId);

    int updateByPrimaryKeySelective(Favorite record);

    @Update({
        "update favorite",
        "set user_id = #{userId,jdbcType=INTEGER},",
          "favorite_pro_price = #{favoriteProPrice,jdbcType=DOUBLE},",
          "favorite_pro_name = #{favoriteProName,jdbcType=VARCHAR},",
          "favorite_pro_size = #{favoriteProSize,jdbcType=VARCHAR},",
          "favorite_pro_img = #{favoriteProImg,jdbcType=VARCHAR}",
        "where favorite_id = #{favoriteId,jdbcType=INTEGER}"
    })
    int updateByPrimaryKey(Favorite record);
}