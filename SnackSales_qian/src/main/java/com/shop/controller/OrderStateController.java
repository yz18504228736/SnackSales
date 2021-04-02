package com.shop.controller;


import com.shop.biz.OrderStateBiz;
import com.shop.entity.OrderState;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/orderstate")
public class OrderStateController {
    @Resource
    private OrderStateBiz orderStateBiz;

    @RequestMapping("/state")
    public String state(Model model){
        List<OrderState> list=orderStateBiz.findAll();
        model.addAttribute("stateList",list);
        return "";
    }

}
