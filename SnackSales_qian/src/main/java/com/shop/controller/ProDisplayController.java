package com.shop.controller;

import com.shop.biz.ProDisplayBiz;
import com.shop.entity.AjaxMsgModel;
import com.shop.entity.ProDisplay;
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
@RequestMapping("/proDisplay")
public class ProDisplayController {
    @Resource
    private ProDisplayBiz proDisplayBiz;

    //    根据产品ID查看对应的产品展示图片
    @RequestMapping("/list/{productId}")
    public String findAllByProductId(@PathVariable("productId") int productId, Model model) {
        List<ProDisplay> proDisplayList = proDisplayBiz.findAllByProductId(productId);
        model.addAttribute("proDisplayList",proDisplayList);
        return "/proDisplay/list";
    }

    //    预添加产品展示图片
    @RequestMapping("/preAdd/{productId}")
    public String preAdd(@PathVariable("productId") int productId, Model model) {
        ProDisplay proDisplay = new ProDisplay();
        proDisplay.setProductId(productId);
        model.addAttribute("proDisplay",proDisplay);
        return "proDisplay/add";
    }

    //    添加产品展示图片
    @ResponseBody
    @RequestMapping("/add")
    public AjaxMsgModel add(@RequestParam("file") MultipartFile[] files, ProDisplay proDisplay) {
        try {
            if (null != files && files.length>0) {
                for (int i=0;i<files.length;i++) {
                    MultipartFile file = files[i];
                    if (null != file && file.getSize()>0) {
                        String fileName = UUID.randomUUID().toString();
                        proDisplay.setProDisplayImg(fileName);
                        proDisplayBiz.save(proDisplay);
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
    @RequestMapping("/delete/{proDisplayId}")
    public AjaxMsgModel delete(@PathVariable("proDisplayId") int proDisplayId) {
        try {
            int row = proDisplayBiz.deleteByProDisplayId(proDisplayId);
        } catch (Exception e) {
            e.printStackTrace();
            return AjaxMsgModel.createfailModel(false);
        }
        return AjaxMsgModel.createSuccessModel(true);
    }

    @RequestMapping("/preUpdate/{proDisplayId}")
    public String preUpdate(@PathVariable("proDisplayId") int proDisplayId,Model model) {
        ProDisplay proDisplay = proDisplayBiz.findByProDisplayId(proDisplayId);
        model.addAttribute("proDisplay",proDisplay);
        return "/proDisplay/update";
    }

    @ResponseBody
    @RequestMapping("/update")
    public AjaxMsgModel update(@RequestParam("file") MultipartFile file, ProDisplay proDisplay) {
        try {
            String fileName = UUID.randomUUID().toString();
            proDisplay.setProDisplayImg(fileName);
            int row = proDisplayBiz.update(proDisplay);
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
