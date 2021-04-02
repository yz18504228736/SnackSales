package com.shop.controller;

import com.shop.biz.*;
import com.shop.entity.*;
import com.shop.util.Constants;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.annotation.Resource;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/**
 * Created by Administrator on 2017/10/23.
 **/
@Controller
@RequestMapping("/exquisiteLifeStyle")
public class ExquisiteLifeStyleController {
      @Resource
      private ExquisiteLifeStyleBiz exquisiteLifeStyleBiz;
      @Resource
      private SpecialTypeBiz specialTypeBiz;
      @Resource
      private StypeBiz stypeBiz;
      @Resource
       private ProductBiz productBiz;
      @Resource
      private LifeStyleImgBiz lifeStyleImgBiz;

    @RequestMapping("/list")
    public String list(int pageNum, Map<String,Object>request){
        Long count = exquisiteLifeStyleBiz.findCount();
        List<ExquisiteLifeStyle> list = exquisiteLifeStyleBiz.findAll(pageNum);
        request.put("totalCount",count);
        request.put("list",list);
        request.put("pageNum",pageNum);
        return "/exquisiteLifeStyle/list";
    }
    @RequestMapping("/findByStype")
    public void findByStype(int stypeId , PrintWriter out){
        try {
            List<Product> list = productBiz.findAllProductByStypeId(stypeId);
            StringBuffer sb= new StringBuffer("");
            for(Product product : list){
                sb.append("<option value=\""+product.getProductId()+"\">"+product.getProductName()+"</option>");
            }
            out.print(sb.toString());
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }
    }
    @ResponseBody
    @RequestMapping("/delete/{lifestyleId}")
    public AjaxMsgModel delete(@PathVariable int lifestyleId){
        try {
            ExquisiteLifeStyle exquisiteLifeStyle = exquisiteLifeStyleBiz.findById(lifestyleId);
            if(exquisiteLifeStyle == null){
                return AjaxMsgModel.createfailModel(false);
            }
            exquisiteLifeStyleBiz.delete(exquisiteLifeStyle);
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
            return AjaxMsgModel.createfailModel(false);
        }
        return AjaxMsgModel.createSuccessModel(false);
    }
    @RequestMapping("/preAdd")
    public String preAdd(Map<String,Object>request){
        request.put("exquisiteLifeStyle",new ExquisiteLifeStyle());
        List<SpecialType> list1 = specialTypeBiz.findAllSpecialType();
        request.put("list1",list1);
        List<Stype> list2 = stypeBiz.findAll();
        request.put("list2",list2);
        return "/exquisiteLifeStyle/add";
    }
    @RequestMapping("/preUpdate/{lifestyleId}")
    public String preUpdate(@PathVariable int lifestyleId,Map<String,Object>request){
        ExquisiteLifeStyle exquisiteLifeStyle = exquisiteLifeStyleBiz.findById(lifestyleId);
        request.put("exquisiteLifeStyle",exquisiteLifeStyle);
        List<SpecialType>list1 = specialTypeBiz.findAllSpecialType();
        request.put("list1",list1);
        List<Stype> list2 = stypeBiz.findAll();
        request.put("list2",list2);
        List<Product> list3 = productBiz.findAllProductByStypeId(exquisiteLifeStyle.getProduct().getStype().getStypeId());
        request.put("list3", list3);
        return "/exquisiteLifeStyle/update";
    }
    @ResponseBody
    @RequestMapping("/add")
    public AjaxMsgModel add(ExquisiteLifeStyle exquisiteLifeStyle, MultipartHttpServletRequest request){
        try {
            MultipartFile file = request.getFile("file");
            String fileName = UUID.randomUUID().toString();
            File newFile = new File(Constants.FILE_PATH+fileName);
            file.transferTo(newFile);
            LifeStyleImg lifeStyleImg = new LifeStyleImg();
            lifeStyleImg.setLifestyleImgName(fileName);
            lifeStyleImgBiz.save(lifeStyleImg);
            LifeStyleImg lifeStyleImg1=lifeStyleImgBiz.findByName(fileName);
            exquisiteLifeStyle.setLifestyleImgId(lifeStyleImg1.getLifestyleImgId());
            exquisiteLifeStyleBiz.save(exquisiteLifeStyle);
        } catch (IOException e) {
            e.printStackTrace();
            return AjaxMsgModel.createfailModel(false);
        }
        return AjaxMsgModel.createSuccessModel(true);
    }
    @ResponseBody
    @RequestMapping("/update")
    public AjaxMsgModel update(ExquisiteLifeStyle exquisiteLifeStyle, MultipartHttpServletRequest request){
        try {
            MultipartFile file = request.getFile("file");
            if (file.getSize() !=0){
                String fileName = UUID.randomUUID().toString();
                File newFile = new File(Constants.FILE_PATH+fileName);
                file.transferTo(newFile);
                LifeStyleImg lifeStyleImg = new LifeStyleImg();
                lifeStyleImg.setLifestyleImgName(fileName);
                lifeStyleImgBiz.save(lifeStyleImg);
                LifeStyleImg lifeStyleImg1=lifeStyleImgBiz.findByName(fileName);
                exquisiteLifeStyle.setLifestyleImgId(lifeStyleImg1.getLifestyleImgId());
            }
                exquisiteLifeStyleBiz.update(exquisiteLifeStyle);
        } catch (IOException e) {
            e.printStackTrace();
            return AjaxMsgModel.createfailModel(false);
        }
        return AjaxMsgModel.createSuccessModel(true);
    }

}
