package com.shop.biz;


import com.shop.dao.DataMapper;
import com.shop.entity.Data;
import com.shop.entity.Product;
import com.shop.entity.SumNum;
import com.shop.entity.TypeNum;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Service
public class DataBiz {
    @Resource
    private DataMapper dataMapper;
@Resource
    private ProductBiz productBiz;
@Resource
    private OrdersBiz ordersBiz;
@Resource
    private StypeBiz stypeBiz;

public List<Data> findAll(){
    List<SumNum> sumNumListList=ordersBiz.findSum();
    List<Data> dataList=new ArrayList<Data>();
    int count=0;
    for (SumNum s:sumNumListList) {
    Data data=new Data();
        Product product=new Product();
        product= productBiz.findByProName(s.getProName());
       data.setProName(s.getProName());
       data.setSellNum(s.getProNum());
       data.setsTypeName(product.getStype().getStypeName());
       data.setbTypeName(product.getStype().getBtype().getBtypeName());
       dataList.add(data);
       count++;
    }
    return dataList;
}

public List<TypeNum> findData(){
    return dataMapper.findData();
}

}
