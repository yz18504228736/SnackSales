package com.shop.dao;


import com.shop.entity.TypeNum;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.mybatis.spring.annotation.MapperScan;

import java.util.List;

@MapperScan
public interface DataMapper {

    @Select("select btype_name as '大类名',sum(order_pro_num) as '销量' from (select order_pro_num,order_pro_name from orders where order_state_id=1) as o\n" +
            "INNER JOIN product p\n" +
            "on p.product_name=o.order_pro_name\n" +
            "inner join stype s\n" +
            "on s.stype_id=p.stype_id\n" +
            "INNER JOIN btype b\n" +
            "on b.btype_id=s.btype_id\n" +
            "group by btype_name\n" +
            "ORDER BY sum(order_pro_num) DESC")
    @Results(id = "typeNumMap",value = {
            @Result(column = "大类名",property = "typeName"),
            @Result(column="销量",property = "sellNum")
    })
    List<TypeNum> findData();

}
