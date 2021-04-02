package com.shop.controller;

import com.shop.biz.BtypeBiz;
import com.shop.biz.StypeBiz;
import com.shop.entity.AjaxMsgModel;
import com.shop.entity.Btype;
import com.shop.entity.Stype;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@RequestMapping("/stype")
@Controller
public class StypeController {
    @Resource
    private StypeBiz stypeBiz;
    @Resource
    private BtypeBiz btypeBiz;

//    显示所有小类的信息
    @RequestMapping("/list")
    public String list(Model model) {
        List<Stype> list = stypeBiz.findAll();
        model.addAttribute("stypeList",list);
        return "/stype/list";
    }

    //    根据Id删除大类信息
    @ResponseBody
    @RequestMapping("/delete/{stypeId}")
    public AjaxMsgModel deleteBtypeById(@PathVariable("stypeId") int stypeId){
        try {
            int row = stypeBiz.deleteStypeById(stypeId);
        } catch (Exception e) {
            e.printStackTrace();
            return AjaxMsgModel.createfailModel(false);
        }
        return AjaxMsgModel.createSuccessModel(true);
    }

//    小类的预添加
    @RequestMapping("/preAdd")
    public String preAdd(Model model) {
        List<Btype> btypeList=btypeBiz.findAllBtype();
        model.addAttribute("btypeList",btypeList);
        Stype stype = new Stype();
        model.addAttribute("stype",stype);
        return "/stype/add";
    }

    //    添加小类信息
    @ResponseBody
    @RequestMapping("/add")
    public AjaxMsgModel add(Stype stype) {
        try {
            int row = stypeBiz.saveStype(stype);
        } catch (Exception e) {
            e.printStackTrace();
            return AjaxMsgModel.createfailModel(false);
        }
        return AjaxMsgModel.createSuccessModel(true);
    }

//    小类的预修改
    @RequestMapping("/preUpdate/{stypeId}")
    public String preUpdate(@PathVariable("stypeId") int stypeId,Model model) {
        List<Btype> list = btypeBiz.findAllBtype();
        model.addAttribute("btypeList",list);
        Stype stype = stypeBiz.findStypeByStypeId(stypeId);
        model.addAttribute("stype",stype);
        return "/stype/update";
    }

    //    修改小类信息
    @ResponseBody
    @RequestMapping("/update")
    public AjaxMsgModel update(Stype stype) {
        try {
            int row = stypeBiz.updateStype(stype);
            System.out.println(row);
        } catch (Exception e) {
            e.printStackTrace();
            return AjaxMsgModel.createfailModel(false);
        }
        return AjaxMsgModel.createSuccessModel(true);
    }
}
