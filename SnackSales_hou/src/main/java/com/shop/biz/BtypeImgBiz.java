package com.shop.biz;

import com.shop.dao.BtypeImgMapper;
import com.shop.entity.BtypeImg;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class BtypeImgBiz {
    @Resource
    private BtypeImgMapper btypeImgMapper;

//    添加大类图片
    public int save(BtypeImg btypeImg) {
        return btypeImgMapper.insert(btypeImg);
    }

//    根据大类Id查看对应的大图
    public List<BtypeImg> findAllByBtypeId(int btypeId) {
        return btypeImgMapper.findAllByBtypeId(btypeId);
    }

//    根据大类图片Id查看对应的图片
    public BtypeImg findBtypeImgById(int btypeImgId) {
        return btypeImgMapper.selectByPrimaryKey(btypeImgId);
    }

//    根据大类图片Id删除对应的图片
    public int deleteById(int btypeImgId) {
        return btypeImgMapper.deleteByPrimaryKey(btypeImgId);
    }


    public int update(BtypeImg btypeImg) {
        return btypeImgMapper.updateByPrimaryKeySelective(btypeImg);
    }
}
