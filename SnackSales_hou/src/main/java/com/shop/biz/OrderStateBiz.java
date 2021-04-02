package com.shop.biz;


import com.shop.dao.OrderStateMapper;
import com.shop.entity.OrderState;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class OrderStateBiz {
    @Resource
    private OrderStateMapper orderStateMapper;

    public OrderState findById(int orderStateId){
        return orderStateMapper.selectByPrimaryKey(orderStateId);
    }

    public List<OrderState> findAll(){
        return orderStateMapper.selectAllOrderState();
    }
}
