package com.shop.dao;

import com.shop.entity.BtypeImg;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface BtypeImgMapper {
    @Delete({
        "delete from btype_img",
        "where btype_img_id = #{btypeImgId,jdbcType=INTEGER}"
    })
    int deleteByPrimaryKey(Integer btypeImgId);

    @Insert({
        "insert into btype_img (btype_img_id, btype_id, ",
        "btype_name)",
        "values (#{btypeImgId,jdbcType=INTEGER}, #{btypeId,jdbcType=INTEGER}, ",
        "#{btypeName,jdbcType=VARCHAR})"
    })
    int insert(BtypeImg record);

    int insertSelective(BtypeImg record);

    @Select({
        "select",
        "btype_img_id, btype_id, btype_name",
        "from btype_img",
        "where btype_img_id = #{btypeImgId,jdbcType=INTEGER}"
    })
    @ResultMap("com.shop.dao.BtypeImgMapper.BaseResultMap")
    BtypeImg selectByPrimaryKey(Integer btypeImgId);

    @Select("select btype_img_id,btype_name,btype_id FROM btype_img WHERE btype_id = #{btypeId}")
    @ResultMap("com.shop.dao.BtypeImgMapper.BaseResultMap")
    List<BtypeImg> findAllByBtypeId(int btypeId);

    int updateByPrimaryKeySelective(BtypeImg record);

    @Update({
        "update btype_img",
        "set btype_id = #{btypeId,jdbcType=INTEGER},",
          "btype_name = #{btypeName,jdbcType=VARCHAR}",
        "where btype_img_id = #{btypeImgId,jdbcType=INTEGER}"
    })
    int updateByPrimaryKey(BtypeImg record);
}