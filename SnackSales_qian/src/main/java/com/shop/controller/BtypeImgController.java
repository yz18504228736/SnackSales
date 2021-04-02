package com.shop.controller;

import com.shop.biz.BtypeImgBiz;
import com.shop.entity.BtypeImg;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/btypeImg")
public class BtypeImgController {

    @Resource
    private BtypeImgBiz btypeImgBiz;

    @ResponseBody
    @RequestMapping("/list/{btypeId}")
    public List<BtypeImg> list(@PathVariable("btypeId") int btypeId){
        List<BtypeImg> btypeImgList=btypeImgBiz.findBtypeImgByBtypeId(btypeId);
        return  btypeImgList;
    }
}
