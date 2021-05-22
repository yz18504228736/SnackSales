package com.shop.controller;

import com.shop.biz.BtypeImgBiz;
import com.shop.entity.AjaxMsgModel;
import com.shop.entity.BtypeImg;
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
@RequestMapping("/btypeImg")
public class BtypeImgController {
    @Resource
    private BtypeImgBiz btypeImgBiz;

    @RequestMapping("/list/{btypeId}")
    public String list(@PathVariable("btypeId") int btypeId,Model model) {
        List<BtypeImg> btypeImgList = btypeImgBiz.findAllByBtypeId(btypeId);
        model.addAttribute("btypeImgList",btypeImgList);
        return "/btypeImg/list";
    }

//    预添加
    @RequestMapping("/preAddImg/{btypeId}")
    public String preAddImg(@PathVariable("btypeId") int btypeId, Model model) {
        BtypeImg btypeImg = new BtypeImg();
        btypeImg.setBtypeId(btypeId);
        model.addAttribute("btypeImg",btypeImg);
        return "/btypeImg/add";
    }

//    添加大类图片
    @ResponseBody
    @RequestMapping("/add")
    public AjaxMsgModel add(@RequestParam("file") MultipartFile [] files, BtypeImg btypeImg) {
        try {
            if (null != files && files.length>0) {
                for (int i=0;i<files.length;i++) {
                    MultipartFile file = files[i];
                    if (null != file && file.getSize()>0) {
                        String fileName = UUID.randomUUID().toString();
                        btypeImg.setBtypeName(fileName);
                        btypeImgBiz.save(btypeImg);
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
    @RequestMapping("/delete/{btypeImgId}")
    public AjaxMsgModel delete(@PathVariable("btypeImgId") int btypeImgId) {
        try {
            int row = btypeImgBiz.deleteById(btypeImgId);
        } catch (Exception e) {
            e.printStackTrace();
            return AjaxMsgModel.createfailModel(false);
        }
        return AjaxMsgModel.createSuccessModel(true);
    }

    @RequestMapping("/preUpdate/{btypeImgId}")
    public String preUpdate(@PathVariable("btypeImgId") int btypeImgId,Model model) {
        BtypeImg btypeImg = btypeImgBiz.findBtypeImgById(btypeImgId);
        model.addAttribute("btypeImg",btypeImg);
        return "/btypeImg/update";
    }

    @ResponseBody
    @RequestMapping("/update")
    public AjaxMsgModel update(@RequestParam("file") MultipartFile file, BtypeImg btypeImg) {
        try {
            String fileName = UUID.randomUUID().toString();
            btypeImg.setBtypeName(fileName);
            int row = btypeImgBiz.update(btypeImg);
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
