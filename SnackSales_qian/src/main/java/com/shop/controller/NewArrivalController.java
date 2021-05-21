package com.shop.controller;

import com.shop.biz.NewArrivalBiz;
import com.shop.entity.NewArrival;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/newarrival")
public class NewArrivalController {
    @Resource
    private NewArrivalBiz newArrivalBiz;

    @RequestMapping("/list")
    public String newArrival(Map<String,Object>request){
        List<NewArrival>list1 = newArrivalBiz.findbyspecialTypeID1();
        request.put("list1",list1);
        List<NewArrival>list2 = newArrivalBiz.findbyspecialTypeID2();
        request.put("list2",list2);
        List<NewArrival>list3 = newArrivalBiz.findbyspecialTypeID3();
        request.put("list3",list3);
        List<NewArrival>list4 = newArrivalBiz.findbyspecialTypeID4();
        request.put("list4",list4);
        List<NewArrival>list5 = newArrivalBiz.findbyspecialTypeID5();
        request.put("list5",list5);
        List<NewArrival>list6 = newArrivalBiz.findbyspecialTypeID6();
        request.put("list6",list6);
        return "newarrival/list";
        }

        }
