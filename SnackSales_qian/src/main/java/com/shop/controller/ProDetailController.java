package com.shop.controller;

import com.shop.biz.ProDetailBiz;
import com.shop.entity.AjaxMsgModel;
import com.shop.entity.ProDetail;
import com.shop.util.Constants;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/proDetail")
public class ProDetailController {
    @Resource
    private ProDetailBiz proDetailBiz;

//    根据产品ID查看对应的产品图片
    @RequestMapping("/list/{productId}")
    public String findAllByProductId(@PathVariable("productId") int productId, Model model) {
        List<ProDetail> proDetailList = proDetailBiz.findAllByProductId(productId);
        model.addAttribute("proDetailList",proDetailList);
        return "/proDetail/list";
    }

//    预添加产品图片
    @RequestMapping("/preAdd/{productId}")
    public String preAdd(@PathVariable("productId") int productId, Model model) {
        ProDetail proDetail = new ProDetail();
        proDetail.setProductId(productId);
        model.addAttribute("proDetail",proDetail);
        return "proDetail/add";
    }

//    添加产品详情图片
    @ResponseBody
    @RequestMapping("/add")
    public AjaxMsgModel add(@RequestParam("file") MultipartFile [] files, ProDetail proDetail) {
        try {
            if (null != files && files.length>0) {
                for (int i=0;i<files.length;i++) {
                    MultipartFile file = files[i];
                    if (null != file && file.getSize()>0) {
                        String fileName = UUID.randomUUID().toString();
                        proDetail.setProDetailImg(fileName);
                        proDetailBiz.save(proDetail);
                        File newFile = new File(Constants.FILE_PATH + fileName+".jpg");
                        try {
                            file.transferTo(newFile);
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            return AjaxMsgModel.createfailModel(false);
        }
        return AjaxMsgModel.createSuccessModel(true);
    }

    @ResponseBody
    @RequestMapping("/delete/{proDetailId}")
    public AjaxMsgModel delete(@PathVariable("proDetailId") int proDetailId) {
        try {
            int row = proDetailBiz.deleteByproDetailId(proDetailId);
        } catch (Exception e) {
            e.printStackTrace();
            return AjaxMsgModel.createfailModel(false);
        }
        return AjaxMsgModel.createSuccessModel(true);
    }

    @RequestMapping("/preUpdate/{proDetailId}")
    public String preUpdate(@PathVariable("proDetailId") int proDetailId,Model model) {
        ProDetail proDetail = proDetailBiz.findByProDetailId(proDetailId);
        model.addAttribute("proDetail",proDetail);
        return "/proDetail/update";
    }

    @ResponseBody
    @RequestMapping("/update")
    public AjaxMsgModel update(@RequestParam("file") MultipartFile file, ProDetail proDetail) {
        try {
            String fileName = UUID.randomUUID().toString();
            proDetail.setProDetailImg(fileName);
            int row = proDetailBiz.update(proDetail);
            System.out.println(row);
            File newFile = new File(Constants.FILE_PATH + fileName+".jpg");
            try {
                file.transferTo(newFile);
            } catch (IOException e) {
                e.printStackTrace();
            }
        } catch (Exception e) {
            e.printStackTrace();
            return AjaxMsgModel.createfailModel(false);
        }
        return AjaxMsgModel.createSuccessModel(true);
    }
}
