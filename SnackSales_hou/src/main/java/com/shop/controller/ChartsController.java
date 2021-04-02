package com.shop.controller;


import com.shop.biz.BtypeBiz;
import com.shop.biz.DataBiz;
import com.shop.entity.TypeNum;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/charts")
public class ChartsController {
    @Resource
    private BtypeBiz btypeBiz;
    @Resource
    private DataBiz dataBiz;

    @RequestMapping("/pie")
    public String pie(Model model){
        List<TypeNum> typeNumList=dataBiz.findData();
        model.addAttribute("typeNumList",typeNumList);
        System.out.println("进入");
        return "/data_analysis/piecharts";
    }
    @RequestMapping("/zhexian")
    public String zhexian(Model model){
        List<TypeNum> typeNumList=dataBiz.findData();
        model.addAttribute("typeNumList",typeNumList);
        System.out.println("进入");
        return "/data_analysis/zhecharts";
    }
    @RequestMapping("/zhuxing")
    public String zhu(Model model){
        List<TypeNum> typeNumList=dataBiz.findData();
        model.addAttribute("typeNumList",typeNumList);
        int [] a=new int[typeNumList.size()];
        for(int i=0;i<typeNumList.size();i++){
            a[i]=typeNumList.get(i).getSellNum();
        }
        int max=a[0];
        for(int i=0;i<a.length;i++){

            if(max<=a[i]){
                max=a[i];
            }
        }
        max=max+100;
        model.addAttribute("max",max);
        System.out.println("进入");
        return "/data_analysis/zhucharts";
    }

    @RequestMapping("/index")
    public String index(Model model){
        List<TypeNum> typeNumList=dataBiz.findData();
        model.addAttribute("typeNumList",typeNumList);
        System.out.println("进入");
        return "/data_analysis/index";
    }

}
