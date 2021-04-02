package com.shop.biz;


import com.shop.dao.OrdersMapper;
import com.shop.dao.ProductMapper;
import com.shop.entity.*;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Service
public class OrdersBiz {
    @Resource
    private OrdersMapper ordersMapper;
    @Resource
    private ProductMapper productMapper;

    public List<Orders> findAll(int userId,int pageNum,int pageSize){
        return ordersMapper.findByUserId(userId,pageNum,pageSize);
    }
    public List<Orders> findBought(int userId,int pageNum,int pageSize){
        return ordersMapper.findBought(userId, pageNum, pageSize);
    }
    public List<Orders> findBoughts(int userId){
        return ordersMapper.findBoughts(userId);
    }

    //找到所有的订单信息
        public List<OrderList> findAllOrders(int userId){
        List<String> list1=ordersMapper.findAllOrderName(userId);
        List<OrderList> list2=new ArrayList<OrderList>();
        for (String s:list1) {
            List<Orders> ordersList=ordersMapper.findByOrderName(s);
                 OrderList orders=new OrderList();
                 double price = 0;
                 int count=0;
                 List<NameImg> nameImgList=new ArrayList<NameImg>();
            for (Orders order:ordersList) {
                 NameImg nameImg=new NameImg();
                 Product product=productMapper.findByProName(order.getOrderProName());
                 nameImg.setProId(product.getProductId());
                 nameImg.setProName(order.getOrderProName());
                 nameImg.setProImg(order.getOrderProImg());
                 nameImgList.add(nameImg);
                 price +=order.getOrderProPrice()*order.getOrderProNum();
                 ++count;
                 orders.setDate(order.getOrderTime());
                 orders.setOrderState(order.getOrderState());
                 orders.setNameImg(nameImgList);
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

   //根据订单号查询订单信息
    public List<Orders> orderDetail(String orderName){
       return ordersMapper.findByOrderName(orderName);
    }

    //根据订单号删除订单
    public int deleteByOrderName(String orderName){
        return ordersMapper.deleteByOrderName(orderName);
    }
    //根据订单号查询订单
    public List<Orders> findByOrderName(String orderName){
        return ordersMapper.findByOrderName(orderName);
    }
    public void save(Orders orders){
      ordersMapper.save(orders);
    }
}
