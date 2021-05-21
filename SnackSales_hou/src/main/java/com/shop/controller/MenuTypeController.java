package com.shop.controller;

import com.shop.biz.MenuTypeBiz;
import com.shop.entity.AjaxMsgModel;
import com.shop.entity.Menutype;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/menutype")
public class MenuTypeController {
    @Resource
    private MenuTypeBiz menuTypeBiz;

    @RequestMapping("/list")
    public String list(int pageNum, Map<String,Object>request){
        Long count = menuTypeBiz.findCount();
        List<Menutype>list = menuTypeBiz.findAll(pageNum);
        request.put("totalCount",count);
        request.put("list",list);
        request.put("pageNum",pageNum);
        return "/menutype/list";
    }

    @ResponseBody
    @RequestMapping("/delete/{menuTypeId}")
    public AjaxMsgModel delete(@PathVariable int menuTypeId){
        try {
            Menutype menutype = menuTypeBiz.findById(menuTypeId);
            if(menutype == null){
                return AjaxMsgModel.createfailModel(false);
            }
            menuTypeBiz.delete(menutype);
        } catch (Exception e) {
            e.printStackTrace();
            return AjaxMsgModel.createfailModel(false);
        }
        return AjaxMsgModel.createSuccessModel(false);
    }
    @RequestMapping("/preAdd")
    public String preAdd(Map<String,Object>request){
        request.put("menutype",new Menutype());
        return "/menutype/add";
    }
    @RequestMapping("/preUpdate/{menuTypeId}")
    public String preUpdate(@PathVariable int menuTypeId,Map<String,Object>request){
        Menutype menutype = menuTypeBiz.findById(menuTypeId);
        request.put("menutype",menutype);
        return "/menutype/update";
    }
    @ResponseBody
    @RequestMapping("/add")
    public AjaxMsgModel add(Menutype menutype){
        try {
            menuTypeBiz.save(menutype);
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
            return AjaxMsgModel.createfailModel(false);
        }
        return AjaxMsgModel.createSuccessModel(true);
    }
    @ResponseBody
    @RequestMapping("/update")
    public AjaxMsgModel update(Menutype menutype){
        try {
            menuTypeBiz.update(menutype);
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
            return AjaxMsgModel.createfailModel(false);
        }
        return AjaxMsgModel.createSuccessModel(true);
    }

}
