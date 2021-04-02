package com.shop.dao;

import com.shop.entity.Sendinfor;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface SendinforMapper {
    @Delete({
        "delete from sendinfor",
        "where info_id = #{infoId,jdbcType=INTEGER}"
    })
    int deleteByPrimaryKey(Integer infoId);

    @Insert({
        "insert into sendinfor (info_id, fee, ",
        "send_time, receive_time)",
        "values (#{infoId,jdbcType=INTEGER}, #{fee,jdbcType=DECIMAL}, ",
        "#{sendTime,jdbcType=VARCHAR}, #{receiveTime,jdbcType=DATE})"
    })
    int insert(Sendinfor record);

    int insertSelective(Sendinfor record);

    @Select({
        "select",
        "info_id, fee, send_time, receive_time",
        "from sendinfor",
        "where info_id = #{infoId,jdbcType=INTEGER}"
    })
    @ResultMap("com.shop.dao.SendinforMapper.BaseResultMap")
    Sendinfor selectByPrimaryKey(Integer infoId);

    @Select({"select info_id, fee, send_time, receive_time from sendinfor"})
    @ResultMap("com.shop.dao.SendinforMapper.BaseResultMap")
    List<Sendinfor> findAllSendInfor();

    int updateByPrimaryKeySelective(Sendinfor record);

    @Update({
        "update sendinfor",
        "set fee = #{fee,jdbcType=DECIMAL},",
          "send_time = #{sendTime,jdbcType=VARCHAR},",
          "receive_time = #{receiveTime,jdbcType=DATE}",
        "where info_id = #{infoId,jdbcType=INTEGER}"
    })
    int updateByPrimaryKey(Sendinfor record);
}