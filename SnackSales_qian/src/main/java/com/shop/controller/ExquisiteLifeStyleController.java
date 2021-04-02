package com.shop.controller;

import com.shop.biz.ExquisiteLifeStyleBiz;
import com.shop.entity.ExquisiteLifeStyle;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/10/23.
 **/
@Controller
@RequestMapping("/exquisiteLifeStyle")
public class ExquisiteLifeStyleController {
      @Resource
      private ExquisiteLifeStyleBiz exquisiteLifeStyleBiz;

    @RequestMapping("/list")
    public String ExquisiteLifeStyle(Map<String,Object>request){
        List<ExquisiteLifeStyle>list7 = exquisiteLifeStyleBiz.findbyspecialTypeID7();
        request.put("list7",list7);
        List<ExquisiteLifeStyle>list8 = exquisiteLifeStyleBiz.findbyspecialTypeID8();
        request.put("list8",list8);
        List<ExquisiteLifeStyle>list9 = exquisiteLifeStyleBiz.findbyspecialTypeID9();
        request.put("list9",list9);
        return "exquisiteLifeStyle/list";
    }



}
