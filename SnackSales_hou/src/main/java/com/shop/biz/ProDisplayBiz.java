package com.shop.biz;

import com.shop.dao.ProDisplayMapper;
import com.shop.entity.ProDisplay;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ProDisplayBiz {
    @Resource
    private ProDisplayMapper proDisplayMapper;

    //    添加产品展示图片
    public int save(ProDisplay proDisplay) {
        return proDisplayMapper.insert(proDisplay);
    }

    //    根据产品Id查看对应的产品展示
    public List<ProDisplay> findAllByProductId(int productId) {
        return proDisplayMapper.findAllByProductId(productId);
    }

    //    根据产品详情图片Id删除对应的图片
    public int deleteByProDisplayId(int proDisplayId) {
        return proDisplayMapper.deleteByPrimaryKey(proDisplayId);
    }

    //    根据产品详情图片Id查询对应的图片
    public ProDisplay findByProDisplayId(int proDisplayId) {
        return proDisplayMapper.selectByPrimaryKey(proDisplayId);
    }

    public int update(ProDisplay proDisplay) {
        return proDisplayMapper.updateByPrimaryKeySelective(proDisplay);
    }
}
