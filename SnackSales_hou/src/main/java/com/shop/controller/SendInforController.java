package com.shop.controller;

import com.shop.biz.SendInforBiz;
import com.shop.entity.AjaxMsgModel;
import com.shop.entity.Sendinfor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/sendInfor")
public class SendInforController {

    @Resource
    private SendInforBiz sendInforBiz;

    //获取所有配送信息列表
    @RequestMapping("/list")
    public String findAllSendInfor(Model model){
       List<Sendinfor> sendinforList= sendInforBiz.findAllSendInfor();
       model.addAttribute("sendinforList",sendinforList);
       return "/sendInfor/list";
    }

    //增加配送信息
    @RequestMapping("/preAdd")
    public  String preAddSendInfor(Model model){
        model.addAttribute("sendInfor",new Sendinfor());
        return "/sendInfor/add";
    }

    @ResponseBody
    @RequestMapping("/add")
    public AjaxMsgModel addSendInfor(Sendinfor sendinfor){
        try {
            sendInforBiz.saveSendInfor(sendinfor);
        }catch (Exception e){
            return AjaxMsgModel.createfailModel(false);
        }
        return AjaxMsgModel.createSuccessModel(true);
    }

    //修改配送信息
    @RequestMapping("/preUpdate/{sendInforId}")
    public  String preUpdateSendInfor(@PathVariable("sendInforId") int sendInforId, Model model){
        model.addAttribute("sendInfor",new Sendinfor());
        Sendinfor sendInfors=sendInforBiz.selectSendInforById(sendInforId);
        model.addAttribute("sendInfors",sendInfors);
        return "/sendInfor/update";
    }

    @ResponseBody
    @RequestMapping("/update")
    public AjaxMsgModel updateSendInfor(Sendinfor sendinfor){
        try {
            sendInforBiz.updateSendInfor(sendinfor);
        }catch (Exception e){
            return AjaxMsgModel.createfailModel(false);
        }
        return AjaxMsgModel.createSuccessModel(true);
    }

    //删除配送信息
    @ResponseBody
    @RequestMapping("/delete/{sendInforId}")
    public AjaxMsgModel deleteSendInfor(@PathVariable("sendInforId") int sendInforId){
        try {
            sendInforBiz.deleteSendInfor(sendInforId);
        }catch (Exception e){
            return  AjaxMsgModel.createfailModel(false);
        }
        return AjaxMsgModel.createSuccessModel(true);
    }

}
