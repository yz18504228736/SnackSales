package com.shop.dao;

import com.shop.entity.LifeStyleImg;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;
import org.mybatis.spring.annotation.MapperScan;

@MapperScan
public interface LifeStyleImgMapper {

    @Insert({
        "insert into lifestyle_img (lifestyle_img_id, lifestyle_img_name)",
        "values (#{lifestyleImgId,jdbcType=INTEGER}, #{lifestyleImgName,jdbcType=VARCHAR})"
    })
    int save(LifeStyleImg record);

    @Select({
        "select",
        "lifestyle_img_id, lifestyle_img_name",
        "from lifestyle_img",
        "where lifestyle_img_id = #{lifestyleImgId,jdbcType=INTEGER}"
    })
    @ResultMap("com.shop.dao.LifeStyleImgMapper.BaseResultMap")
    LifeStyleImg selectByPrimaryKey(Integer lifestyleImgId);

    @Select({
            "select",
            "lifestyle_img_id, lifestyle_img_name",
            "from lifestyle_img",
            "where lifestyle_img_name = #{lifestyleImgName,jdbcType=INTEGER}"
    })
    @ResultMap("com.shop.dao.LifeStyleImgMapper.BaseResultMap")
    LifeStyleImg selectByName(String lifestyleImgName);

}