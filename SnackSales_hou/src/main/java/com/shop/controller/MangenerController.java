package com.shop.controller;

import com.shop.biz.MangenerBiz;
import com.shop.entity.AjaxMsgModel;
import com.shop.entity.Mangener;
import com.shop.util.Constants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/mangener")
public class MangenerController {

    @Resource
    private MangenerBiz mangenerBiz;

    @Autowired
    private HttpServletRequest request;

    //获取所有的管理员
    @RequestMapping("/list")
    public  String findAllMangener(Model model){
        List<Mangener> mangenerList=mangenerBiz.findAllMangener();
        model.addAttribute("mangenerList",mangenerList);
        return "/mangener/list";
    }

    //根据Id删除一个管理员
    @ResponseBody
    @RequestMapping("/delete/{mangenerId}")
    public AjaxMsgModel deleteMangenerById(@PathVariable("mangenerId") int mangenerId){
        try {
            mangenerBiz.deleteMangenerById(mangenerId);
        }catch (Exception e){
            return AjaxMsgModel.createfailModel(false);
        }
        return AjaxMsgModel.createSuccessModel(true);
    }

    //根据管理员用户名和密码登录
    @RequestMapping("/login")
    public String login(String manName, String manPwd,HttpServletRequest request,HttpServletResponse response){
        Mangener mangener=mangenerBiz.findMangenerByName(manName);
//        TODO 有空指针
        if (manName.equals(mangener.getManName())&&manPwd.equals(mangener.getManPwd())){
            request.getSession().setAttribute("manName",manName);
            return "/index";
        }else{
            return "redirect:/mangener/login";
        }
    }
    //添加一个管理员
    @RequestMapping("preAdd")
    public  String preAddMangener(Model model){
        model.addAttribute("mangener",new Mangener());
        return "/mangener/add";
    }

    @ResponseBody
    @RequestMapping("/add")
    public AjaxMsgModel addMangener(Mangener mangener){
        try {
            mangenerBiz.saveMangener(mangener);
        }catch (Exception e){
            return AjaxMsgModel.createfailModel(false);
        }
        return AjaxMsgModel.createSuccessModel(true);
    }

    //修改一个管理员
    @RequestMapping("preUpdate/{mangenerId}")
    public  String preUpdateMangener(@PathVariable("mangenerId") int mangenerId,Model model){
        model.addAttribute("mangener",new Mangener());
        Mangener mangeners=mangenerBiz.findByMangenerId(mangenerId);
        model.addAttribute("mangeners",mangeners);
        return "/mangener/update";
    }
    @ResponseBody
    @RequestMapping("/update")
    public AjaxMsgModel updateMangener(Mangener mangener){
        try {
            mangenerBiz.updateMangener(mangener);
        }catch (Exception e){
            return AjaxMsgModel.createfailModel(false);
        }
        return AjaxMsgModel.createSuccessModel(true);
    }


    //多文件上传
    @RequestMapping("filesUpload")
    public String filesUpload(@RequestParam("image") MultipartFile[] files) {
        List<String> aaaa=new ArrayList<String>();
        //判断file数组不能为空并且长度大于0
        if(files!=null&&files.length>0){
            //循环获取file数组中得文件
            for(int i = 0;i<files.length;i++){
                MultipartFile file = files[i];
                File newFile = new File(Constants.FILE_PATH+UUID.randomUUID().toString());
                try {
                    //保存文件
                    file.transferTo(newFile);
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        return null;
    }

}
