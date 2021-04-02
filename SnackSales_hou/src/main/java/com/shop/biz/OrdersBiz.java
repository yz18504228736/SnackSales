package com.shop.biz;


import com.shop.dao.OrdersMapper;
import com.shop.entity.OrderList;
import com.shop.entity.Orders;
import com.shop.entity.SumNum;
import com.shop.util.Constants;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Service
public class OrdersBiz {
    @Resource
    private OrdersMapper ordersMapper;

    public List<Orders> findAll(int userId, int pageNum){
        pageNum=(pageNum-1)* Constants.PAGE_SIZE;
        return ordersMapper.findByUserId(userId,pageNum);
    }

    public List<Orders> findBought(int pageNum){
        pageNum=(pageNum-1)* Constants.PAGE_SIZE;
        return ordersMapper.findBought(pageNum);
    }

    public long count(){
        return ordersMapper.count();
    }

    //找到所有的订单信息
//    public List<List<OrderList>> findAllOrders(int userId,int pageNum,int pageSize){
        public List<OrderList> findAllOrders(int userId){
//        List<List<OrderList>> list=new ArrayList<List<OrderList>>();
        List<String> list1=ordersMapper.findAllOrderName(userId);
        List<OrderList> list2=new ArrayList<OrderList>();
        for (String s:list1) {
            List<Orders> ordersList=ordersMapper.findByOrderName(s);
                 OrderList orders=new OrderList();
                 double price = 0;
                 int count=0;
            for (Orders order:ordersList) {
                 List<String> proName=new ArrayList<String>();
                 List<String> proImg=new ArrayList<String>();
                 proName.add(order.getOrderProName());
                 proImg.add(order.getOrderProImg());
                 price +=order.getOrderProPrice()*order.getOrderProNum();
                 ++count;
                 orders.setDate(order.getSendtime());
                 orders.setOrderState(order.getOrderState());
                 orders.setProImg(proImg);
                 orders.setProName(proName);
                 orders.setPrice(price);
                 orders.setOrderName(s);
                 orders.setCount(count);
            }
                 list2.add(orders);
        }
//        list.add(list2);
        return list2;
    }

    //销量排行前五产品
    public List<Orders> findBestSeller(){
            return ordersMapper.findBestSeller();

    }

    //查询已付款订单，根据商品的销量降序排序
   public List<SumNum> findSum(){

        return ordersMapper.findSum();
   }
}
