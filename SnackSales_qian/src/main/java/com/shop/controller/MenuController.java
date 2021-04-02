package com.shop.controller;

import com.shop.biz.MenuBiz;
import com.shop.biz.MenuTypeBiz;
import com.shop.entity.AjaxMsgModel;
import com.shop.entity.Menu;
import com.shop.entity.Menutype;
import com.shop.util.Constants;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.annotation.Resource;
import java.io.File;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/**
 * Created by Administrator on 2017/10/25.
 **/
@Controller
@RequestMapping("/menu")
public class MenuController {
      @Resource
       private MenuBiz menuBiz;
      @Resource
       private MenuTypeBiz menuTypeBiz;

    @RequestMapping("/list")
    public String list(int pageNum,Map<String, Object> request){
        try {
            long count = menuBiz.findCount();
            List<Menu> list = menuBiz.findAll(pageNum);
            request.put("totalCount",count);
            request.put("menuList", list);
            request.put("pageNum", pageNum);
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }
        return "/menu/menu";
    }

    @RequestMapping("/detail/{menuId}")
    public String findMenuById(@PathVariable("menuId") int menuId, Model model){
        Menu menu=menuBiz.findById(menuId);
        model.addAttribute("menu",menu);
        return "/menu/menuDetail";
    }

    @RequestMapping("list1")
    public  String list1(Model model){
        List<Menu> menuList=menuBiz.findAllMenu();
        model.addAttribute("menuList",menuList);
        return "/menu/menu";
    }

    @ResponseBody
    @RequestMapping("/delete/{menuId}")
    public AjaxMsgModel delete(@PathVariable int menuId){
        try {
            Menu menu = menuBiz.findById(menuId);
            if(menu == null){
                return AjaxMsgModel.createfailModel(false);
            }
            menuBiz.delete(menu);
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
            return AjaxMsgModel.createfailModel(false);
        }
        return AjaxMsgModel.createSuccessModel(false);
    }

    @RequestMapping("/preAdd")
    public String preAdd(Map<String, Object>request){
        try {
            request.put("menu", new Menu());
            List<Menutype> list = menuTypeBiz.findAlls();
            request.put("list", list);
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }
        return "/menu/add";
    }

    @RequestMapping("/preUpdate/{menuId}")
    public String preUpdate(@PathVariable int menuId,Map<String, Object> request){
        try {
            Menu menu = menuBiz.findById(menuId);
            request.put("menu", menu);
            List<Menutype> list = menuTypeBiz.findAlls();
            request.put("list",list);
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }
        return "/menu/update";
    }

    @ResponseBody
    @RequestMapping("/add")
    public AjaxMsgModel add(Menu menu, MultipartHttpServletRequest request){
        try {
            MultipartFile file = request.getFile("file");
            String fileName = UUID.randomUUID().toString();
            File newFile = new File(Constants.FILE_PATH+ fileName);
            file.transferTo(newFile);
            menu.setMenuImg(fileName);
            menuBiz.save(menu);
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
            return AjaxMsgModel.createfailModel(false);
        }
        return AjaxMsgModel.createSuccessModel(true);
    }

    @ResponseBody
    @RequestMapping("/update")
    public AjaxMsgModel update(Menu menu, MultipartHttpServletRequest request){
        try {
            MultipartFile file = request.getFile("file");
            if(file.getSize() !=0){
                String fileName = UUID.randomUUID().toString();
                File newFile = new File(Constants.FILE_PATH+ fileName);
                file.transferTo(newFile);
                menu.setMenuImg(fileName);
            }
            menuBiz.update(menu);
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
            return AjaxMsgModel.createfailModel(false);
        }
        return AjaxMsgModel.createSuccessModel(true);
    }
}
