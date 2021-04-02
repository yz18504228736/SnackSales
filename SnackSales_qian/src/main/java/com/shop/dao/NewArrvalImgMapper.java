package com.shop.dao;

import com.shop.entity.NewArrvalImg;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;
import org.mybatis.spring.annotation.MapperScan;

@MapperScan
public interface NewArrvalImgMapper {

    @Select({
        "select",
        "new_arrval_img_id, new_arrval_img_name",
        "from new_arrval_img",
        "where new_arrval_img_id = #{newArrvalImgId,jdbcType=INTEGER}"
    })
    @ResultMap("com.shop.dao.NewArrvalImgMapper.BaseResultMap")
    NewArrvalImg selectByPrimaryKey(Integer newArrvalImgId);

    @Select({
            "select",
            "new_arrval_img_id, new_arrval_img_name",
            "from new_arrval_img",
            "where new_arrval_img_name = #{newArrvalImgName,jdbcType=VARCHAR}"
    })
    @ResultMap("com.shop.dao.NewArrvalImgMapper.BaseResultMap")
    NewArrvalImg selectByName(String newArrvalImgName);
}