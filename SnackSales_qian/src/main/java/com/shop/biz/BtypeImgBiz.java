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

    public List<BtypeImg> findBtypeImgByBtypeId(int btypeId){
        return btypeImgMapper.selectBtypeId(btypeId);
    }
}
