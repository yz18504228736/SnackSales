package com.shop.dao;

import com.shop.entity.Orders;
import com.shop.entity.SumNum;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface OrdersMapper {
    @Delete({
        "delete from orders",
        "where order_id = #{orderId,jdbcType=INTEGER}"
    })
    int deleteByPrimaryKey(Integer orderId);

    @Delete({
            "delete from orders",
            "where order_name = #{orderName,jdbcType=VARCHAR}"
    })
    int deleteByOrderName(String orderName);

    @Insert({
        "insert into orders (order_id, user_id, ",
        "order_state_id, order_pro_num, ",
        "order_pro_price, order_name, ",
        "order_time, order_pro_name, ",
        "order_pro_size, order_pro_img, ",
        "receiver_name, address, ",
        "phonenum, fee, sendtime, ",
        "receivetime)",
        "values (#{orderId,jdbcType=INTEGER}, #{userId,jdbcType=INTEGER}, ",
        "#{orderStateId,jdbcType=INTEGER}, #{orderProNum,jdbcType=INTEGER}, ",
        "#{orderProPrice,jdbcType=DECIMAL}, #{orderName,jdbcType=VARCHAR}, ",
        "#{orderTime,jdbcType=TIMESTAMP}, #{orderProName,jdbcType=VARCHAR}, ",
        "#{orderProSize,jdbcType=VARCHAR}, #{orderProImg,jdbcType=VARCHAR}, ",
        "#{receiverName,jdbcType=VARCHAR}, #{address,jdbcType=VARCHAR}, ",
        "#{phonenum,jdbcType=VARCHAR}, #{fee,jdbcType=DECIMAL}, #{sendtime,jdbcType=TIMESTAMP}, ",
        "#{receivetime,jdbcType=VARCHAR})"
    })
    int insert(Orders record);

    @Insert({
            "insert into orders (user_id, ",
            "order_state_id, order_pro_num, ",
            "order_pro_price, order_name, ",
            "order_time, order_pro_name, ",
            "order_pro_size, order_pro_img, ",
            "receiver_name, address, ",
            "phonenum, fee)",
            "values (#{user.userId,jdbcType=INTEGER}, ",
            "#{orderState.stateId,jdbcType=INTEGER}, #{orderProNum,jdbcType=INTEGER}, ",
            "#{orderProPrice,jdbcType=DECIMAL}, #{orderName,jdbcType=VARCHAR}, ",
            "#{orderTime,jdbcType=TIMESTAMP}, #{orderProName,jdbcType=VARCHAR}, ",
            "#{orderProSize,jdbcType=VARCHAR}, #{orderProImg,jdbcType=VARCHAR}, ",
            "#{receiverName,jdbcType=VARCHAR}, #{address,jdbcType=VARCHAR}, ",
            "#{phonenum,jdbcType=VARCHAR}, #{fee,jdbcType=DECIMAL})"
    })
    void save(Orders record);

    void insertSelective(Orders record);

    @Select({
        "select",
        "order_id, user_id, order_state_id, order_pro_num, order_pro_price, order_name, ",
        "order_time, order_pro_name, order_pro_size, order_pro_img, receiver_name, address, ",
        "phonenum, fee, sendtime, receivetime",
        "from orders",
        "where order_id = #{orderId,jdbcType=INTEGER}"
    })
    @ResultMap("com.shop.dao.OrdersMapper.BaseResultMap")
    Orders selectByPrimaryKey(Integer orderId);

   //????????????????????????
    @Select({
            "select",
            "order_id, user_id, order_state_id, order_pro_num, order_pro_price, order_name, ",
            "order_time, order_pro_name, order_pro_size, order_pro_img, receiver_name, address, ",
            "phonenum, fee, sendtime, receivetime",
            "from (select * from orders where user_id=#{userId}) as a",
            "where order_state_id =1 limit #{pageNum},#{pageSize}"
    })
    @ResultMap("com.shop.dao.OrdersMapper.BaseResultMap")
    List<Orders> findBought(@Param("pageNum") int pageNum, @Param("pageSize") int pageSize, @Param("userId") int userId);

    //????????????????????????
    @Select({
            "select",
            "order_id, user_id, order_state_id, order_pro_num, order_pro_price, order_name, ",
            "order_time, order_pro_name, order_pro_size, order_pro_img, receiver_name, address, ",
            "phonenum, fee, sendtime, receivetime",
            "from (select * from orders where user_id=#{userId}) as a",
            "where order_state_id =1"
    })
    @ResultMap("com.shop.dao.OrdersMapper.BaseResultMap")
    List<Orders> findBoughts(int userId);

    @Select({
            "select",
            "order_id, user_id, order_state_id, order_pro_num, order_pro_price, order_name, ",
            "order_time, order_pro_name, order_pro_size, order_pro_img, receiver_name, address, ",
            "phonenum, fee, sendtime, receivetime",
            "from orders",
            "where user_id = #{userId,jdbcType=INTEGER} limit #{pageNum},#{pageSize}"
    })
    @ResultMap("com.shop.dao.OrdersMapper.BaseResultMap")
    List<Orders> findByUserId(@Param("userId") int userId, @Param("pageNum") int pageNum, @Param("pageSize") int pageSize);

    int updateByPrimaryKeySelective(Orders record);

    //?????????????????????
    @Select("select order_name,order_time from orders where user_id=#{userId} GROUP BY order_name,order_time ORDER BY order_time")
    List<String> findAllOrderName(int userId);

    //?????????????????????????????????????????????
    @Select({
            "select",
            "order_state_id, order_pro_num, order_pro_price, order_name, ",
            "order_time, order_pro_name, order_pro_size, order_pro_img, receiver_name, address, ",
            "phonenum, fee, sendtime, receivetime",
            "from orders",
            "where order_name = #{orderName,jdbcType=VARCHAR}"
    })
    @ResultMap("com.shop.dao.OrdersMapper.BaseResultMap")
    List<Orders> findByOrderName(@Param("orderName") String orderName);

    @Update({
        "update orders",
        "set user_id = #{userId,jdbcType=INTEGER},",
          "order_state_id = #{orderStateId,jdbcType=INTEGER},",
          "order_pro_num = #{orderProNum,jdbcType=INTEGER},",
          "order_pro_price = #{orderProPrice,jdbcType=DECIMAL},",
          "order_name = #{orderName,jdbcType=VARCHAR},",
          "order_time = #{orderTime,jdbcType=TIMESTAMP},",
          "order_pro_name = #{orderProName,jdbcType=VARCHAR},",
          "order_pro_size = #{orderProSize,jdbcType=VARCHAR},",
          "order_pro_img = #{orderProImg,jdbcType=VARCHAR},",
          "receiver_name = #{receiverName,jdbcType=VARCHAR},",
          "address = #{address,jdbcType=VARCHAR},",
          "phonenum = #{phonenum,jdbcType=VARCHAR},",
          "fee = #{fee,jdbcType=DECIMAL},",
          "sendtime = #{sendtime,jdbcType=TIMESTAMP},",
          "receivetime = #{receivetime,jdbcType=VARCHAR}",
        "where order_id = #{orderId,jdbcType=INTEGER}"
    })
    int updateByPrimaryKey(Orders record);
//??????????????????
    @Select("select order_pro_name,order_pro_price,order_pro_size,order_pro_img,COUNT(1) as counts from orders where order_state_id=1 " +
            "GROUP BY order_pro_name,order_pro_price,order_pro_size,order_pro_img ORDER BY counts DESC limit 5")
    @ResultMap("com.shop.dao.OrdersMapper.BaseResultMap")
    List<Orders> findBestSeller();


    //?????????????????????????????????????????????????????????
    @Select("select order_pro_name as '?????????',sum(order_pro_num) as '??????'from(select * from orders where order_state_id =1)as A GROUP BY order_pro_name ORDER BY sum(order_pro_num) DESC")
    @Results(id = "sumMap",value={
            @Result(column = "?????????",property = "proName"),
            @Result(column = "??????",property = "proNum")
    })
    List<SumNum> findSum();


}