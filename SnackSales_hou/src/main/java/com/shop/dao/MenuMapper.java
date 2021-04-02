package com.shop.dao;

import com.shop.entity.Menu;
import org.apache.ibatis.annotations.*;
import org.mybatis.spring.annotation.MapperScan;

import java.util.List;

@MapperScan
public interface MenuMapper {
    @Delete({
        "delete from menu",
        "where menu_id = #{menuId,jdbcType=INTEGER}"
    })
    int deleteByPrimaryKey(Integer menuId);

    @Insert({
            "insert into menu (menu_id, menu_type_id, ",
            "menu_desc, menu_name, ",
            "menu_img, menu_content)",
            "values (#{menuId,jdbcType=INTEGER}, #{menutype.menuTypeId,jdbcType=INTEGER}, ",
            "#{menuDesc,jdbcType=VARCHAR}, #{menuName,jdbcType=VARCHAR}, ",
            "#{menuImg,jdbcType=VARCHAR}, #{menuContent,jdbcType=LONGVARCHAR})"
    })
    int insert(Menu record);

    int insertSelective(Menu record);

    @Select({
        "select",
        "menu_id, menu_type_id, menu_desc, menu_name, menu_content, menu_img",
        "from menu",
        "where menu_id = #{menuId,jdbcType=INTEGER}"
    })
    @ResultMap("com.shop.dao.MenuMapper.BaseResultMap")
    Menu selectByPrimaryKey(Integer menuId);

    int updateByPrimaryKeySelective(Menu record);

    @Update({
        "update menu",
        "set menu_type_id = #{menutype.menuTypeId,jdbcType=INTEGER},",
          "menu_desc = #{menuDesc,jdbcType=VARCHAR},",
          "menu_name = #{menuName,jdbcType=VARCHAR},",
          "menu_content = #{menuContent,jdbcType=VARCHAR},",
          "menu_img = #{menuImg,jdbcType=VARCHAR}",
        "where menu_id = #{menuId,jdbcType=INTEGER}"
    })
    int updateByPrimaryKey(Menu record);

    long findCount();

    List<Menu> findAll(@Param("firstResult") int firstResult, @Param("maxResults") int maxResults);
}