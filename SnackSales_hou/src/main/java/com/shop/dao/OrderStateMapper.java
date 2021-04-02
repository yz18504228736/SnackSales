package com.shop.dao;

import com.shop.entity.OrderState;
import org.apache.ibatis.annotations.*;
import org.mybatis.spring.annotation.MapperScan;

import java.util.List;

@MapperScan
public interface OrderStateMapper {
    @Delete({
        "delete from order_state",
        "where state_id = #{stateId,jdbcType=INTEGER}"
    })
    int deleteByPrimaryKey(Integer stateId);

    @Insert({
        "insert into order_state (state_id, state_name)",
        "values (#{stateId,jdbcType=INTEGER}, #{stateName,jdbcType=VARCHAR})"
    })
    int insert(OrderState record);

    int insertSelective(OrderState record);

    @Select({
        "select",
        "state_id, state_name",
        "from order_state",
        "where state_id = #{stateId,jdbcType=INTEGER}"
    })
    @ResultMap("com.shop.dao.OrderStateMapper.BaseResultMap")
    OrderState selectByPrimaryKey(Integer stateId);

    @Select({"select state_id, state_name from order_state"})
    @ResultMap("com.shop.dao.OrderStateMapper.BaseResultMap")
    List<OrderState> selectAllOrderState();

    int updateByPrimaryKeySelective(OrderState record);

    @Update({
        "update order_state",
        "set state_name = #{stateName,jdbcType=VARCHAR}",
        "where state_id = #{stateId,jdbcType=INTEGER}"
    })
    int updateByPrimaryKey(OrderState record);
}