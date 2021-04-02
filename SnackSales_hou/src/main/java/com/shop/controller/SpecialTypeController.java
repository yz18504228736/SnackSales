package com.shop.controller;

import com.shop.biz.SpecialTypeBiz;
import com.shop.entity.AjaxMsgModel;
import com.shop.entity.SpecialType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/specialType")
public class SpecialTypeController {

    @Resource
    private SpecialTypeBiz specialTypeBiz;

    //查询所有的优质专场以及新品专区分类信息
    @RequestMapping("/list")
    public String findAllSpecialType(Model model){
        List<SpecialType> specialTypeList=specialTypeBiz.findAllSpecialType();
        model.addAttribute("specialTypeList",specialTypeList);
        return "/specialType/list";
    }

    //根据Id删除某个优质专场以及新品专区分类信息
    @ResponseBody
    @RequestMapping("/delete/{specialTypeId}")
    public AjaxMsgModel deleteSpecialTypeById(@PathVariable("specialTypeId")int specialTypeId){
        try {
            specialTypeBiz.delectSpecialType(specialTypeId);
        }catch (Exception e){
            return AjaxMsgModel.createfailModel(false);
        }
        return AjaxMsgModel.createSuccessModel(true);
    }

    //增加某个优质专场以及新品专区分类信息
    @RequestMapping("/preAdd")
    public String preAddSpecialType(Model model){
        model.addAttribute("specialType",new SpecialType());
        return "/specialType/add";
    }

    @ResponseBody
    @RequestMapping("/add")
    public AjaxMsgModel addSpecialType(SpecialType specialType){
        try {
            specialTypeBiz.saveSpecialType(specialType);
        }catch (Exception e){
            return AjaxMsgModel.createfailModel(false);
        }
        return AjaxMsgModel.createSuccessModel(true);
    }

    //修改某个优质专场以及新品专区分类信息
    @RequestMapping("/preUpdate/{specialTypeId}")
    public  String preUpdateSpecialType(@PathVariable("specialTypeId") int specialTypeId,Model model){
        model.addAttribute("specialType",new SpecialType());
        SpecialType specialTypes=specialTypeBiz.findSpecialTypeById(specialTypeId);
        model.addAttribute("specialTypes",specialTypes);
        return "/specialType/update";
    }
    @ResponseBody
    @RequestMapping("/update")
    public AjaxMsgModel updateSpecialType(SpecialType specialType){
        try {
            specialTypeBiz.updateSpecialType(specialType);
        }catch (Exception e){
            return AjaxMsgModel.createfailModel(false);
        }
        return AjaxMsgModel.createSuccessModel(true);
    }

}
