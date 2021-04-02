package com.shop.biz;

import com.shop.dao.SizeMapper;
import com.shop.entity.Size;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 *规则管理Biz层
 * dengkungang
 */
@Service
public class SizeBiz {

    @Resource
    private SizeMapper sizeMapper;

//    根据产品的Id查询所对应的规格
    public List<Size> findAllSizeByProductId(int productId) {
        return sizeMapper.findAllSizeByProductId(productId);
    }

//    查找所有规格
    public List<Size> findAllSize() {
        return sizeMapper.findAllSize();
    }

//    根据规格的Id删除对应的规格
    public int deleteSizeBySizeId(Integer sizeId) {
        return sizeMapper.deleteByPrimaryKey(sizeId);
    }

//    添加规格
    public int saveSize(Size size) {
        return sizeMapper.insert(size);
    }

//    动态修改规则
    public int updateSize(Size size) {
        return sizeMapper.updateByPrimaryKeySelective(size);
    }

//    根据规格Id查找对应的规格
    public Size findSizeBySizeId(int sizeId) {
        return sizeMapper.selectByPrimaryKey(sizeId);
    }
}
