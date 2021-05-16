package com.shop.controller;

import com.shop.biz.BtypeBiz;
import com.shop.entity.AjaxMsgModel;
import com.shop.entity.Btype;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/btype")
public class BtypeController {

    @Resource
    private BtypeBiz btypeBiz;


    //显示所有大类的类型
    @RequestMapping("/list")
    public String findAllBtype(Model model){
        List<Btype> btypeList=btypeBiz.findAllBtype();
        model.addAttribute("btypeList",btypeList);
        return "/btype/list";
    }

//    根据Id删除大类信息
    @ResponseBody
    @RequestMapping("/delete/{btypeId}")
    public AjaxMsgModel deleteBtypeById(@PathVariable("btypeId") int btypeId){
        try {
            int row =  btypeBiz.deleteBtypeBybTypeId(btypeId);
        } catch (Exception e) {
            e.printStackTrace();
            return AjaxMsgModel.createfailModel(false);
        }
        return AjaxMsgModel.createSuccessModel(true);

    }

//    根据Id预修改大类信息
    @RequestMapping("/preUpdate/{btypeId}")
    public String preUpdate(@PathVariable("btypeId") int btypeId, Model model) {
        Btype btype = btypeBiz.findAllBtypeById(btypeId);
        model.addAttribute("btype",btype);
        return "/btype/update";
    }

//    修改大类信息
    @ResponseBody
    @RequestMapping("/update")
    public AjaxMsgModel update(Btype btype) {
        try {
            int row = btypeBiz.updateBtype(btype);
        } catch (Exception e) {
            e.printStackTrace();
            return AjaxMsgModel.createfailModel(false);
        }
        return AjaxMsgModel.createSuccessModel(true);
    }

//    预添加大类信息
    @RequestMapping("/preAdd")
    public String preAdd(Model model) {
        Btype btype = new Btype();
        model.addAttribute("btype",btype);
        return "/btype/add";
    }

//    添加大类信息
    @ResponseBody
    @RequestMapping("/add")
    public AjaxMsgModel add(Btype btype) {
        try {
            int row = btypeBiz.saveBtype(btype);
        } catch (Exception e) {
            e.printStackTrace();
            return AjaxMsgModel.createfailModel(false);
        }
        return AjaxMsgModel.createSuccessModel(true);
    }
}
