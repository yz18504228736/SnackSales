package com.shop.controller;


import com.shop.biz.DataBiz;
import com.shop.entity.Data;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/data")
public class DataController {
  @Resource
    private DataBiz dataBiz;


  @RequestMapping("/showData")
  public String showData(Model model){
      List<Data> list=dataBiz.findAll();
      model.addAttribute("dataList",list);
      return "/data_analysis/data";
  }





}
