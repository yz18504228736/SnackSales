package com.shop.controller;

import com.shop.biz.SizeBiz;
import com.shop.entity.AjaxMsgModel;
import com.shop.entity.Size;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/size")
public class SizeController {
    @Resource
    private SizeBiz sizeBiz;

    @RequestMapping("/list/{productId}")
    public String findAllSizeByProductId(@PathVariable("productId") int productId, Model model) {
        List<Size> sizeList = sizeBiz.findAllSizeByProductId(productId);
        model.addAttribute(sizeList);
        return "size/list";
    }

    @RequestMapping("/preUpdate/{sizeId}")
    public String preUpdate(@PathVariable("sizeId") int sizeId, Model model) {
        Size size = sizeBiz.findSizeBySizeId(sizeId);
        model.addAttribute("size",size);
        return "/size/update";
    }

    @ResponseBody
    @RequestMapping("/update")
    public AjaxMsgModel update(Size size) {
        try {
            int row =  sizeBiz.updateSize(size);
        } catch (Exception e) {
            e.printStackTrace();
            return AjaxMsgModel.createfailModel(false);
        }
       return AjaxMsgModel.createSuccessModel(true);
    }

    @ResponseBody
    @RequestMapping("/delete/{sizeId}")
    public AjaxMsgModel delete(@PathVariable("sizeId") int sizeId) {
        try {
            int row = sizeBiz.deleteSizeBySizeId(sizeId);
        } catch (Exception e) {
            e.printStackTrace();
            return AjaxMsgModel.createfailModel(false);
        }
        return AjaxMsgModel.createSuccessModel(true);
    }

}
