package com.shop.biz;

import com.shop.dao.ProDetailMapper;
import com.shop.entity.ProDetail;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ProDetailBiz {
    @Resource
    private ProDetailMapper proDetailMapper;

//    添加产品详情
    public int save(ProDetail proDetail) {
        return proDetailMapper.insert(proDetail);
    }

//    根据产品Id查看对应的产品详情
    public List<ProDetail> findAllByProductId(int productId) {
        return proDetailMapper.findAllByProductId(productId);
    }

//    根据产品详情图片Id删除对应的图片
    public int deleteByproDetailId(int proDetailId) {
        return proDetailMapper.deleteByPrimaryKey(proDetailId);
    }

//    根据产品详情图片Id查询对应的图片
    public ProDetail findByProDetailId(int proDetailId) {
        return proDetailMapper.selectByPrimaryKey(proDetailId);
    }

    public int update(ProDetail proDetail) {
        return proDetailMapper.updateByPrimaryKeySelective(proDetail);
    }
}
