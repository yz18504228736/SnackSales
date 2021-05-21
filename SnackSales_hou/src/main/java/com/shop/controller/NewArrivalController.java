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
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@Controller
@RequestMapping("/newarrival")
public class NewArrivalController {
    @Resource
    private NewArrivalBiz newArrivalBiz;
    @Resource
    private SpecialTypeBiz specialTypeBiz;
    @Resource
    private StypeBiz stypeBiz;
    @Resource
    private ProductBiz productBiz;
    @Resource
    private NewArrvalImgBiz newArrvalImgBiz;
    @RequestMapping("/list")
    public String list(int pageNum, Map<String,Object>request){
        Long count = newArrivalBiz.findCount();
        List<NewArrival> list = newArrivalBiz.findAll(pageNum);
        request.put("totalCount",count);
        request.put("list",list);
        request.put("pageNum",pageNum);
        return "/newarrival/list";
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
    @RequestMapping("/delete/{newArrivalId}")
    public AjaxMsgModel delete(@PathVariable int newArrivalId){
        try {
            NewArrival newArrival = newArrivalBiz.findById(newArrivalId);
            if(newArrival == null){
                return AjaxMsgModel.createfailModel(false);
            }
            newArrivalBiz.delete(newArrival);
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
            return AjaxMsgModel.createfailModel(false);
        }
        return AjaxMsgModel.createSuccessModel(false);
    }
    @RequestMapping("/preAdd")
    public String preAdd(Map<String,Object>request){
           request.put("newarrival",new NewArrival());
           List<SpecialType> list1 = specialTypeBiz.findAllSpecialType();
           request.put("list1",list1);
           List<Stype> list2 = stypeBiz.findAll();
           request.put("list2",list2);
           return "/newarrival/add";
    }
    @RequestMapping("/preUpdate/{newArrivalId}")
    public String preUpdate(@PathVariable int newArrivalId,Map<String,Object>request){
           NewArrival newArrival = newArrivalBiz.findById(newArrivalId);
          request.put("newarrival",newArrival);
          List<SpecialType>list1 = specialTypeBiz.findAllSpecialType();
          request.put("list1",list1);
        List<Stype> list2 = stypeBiz.findAll();
        request.put("list2",list2);
        List<Product> list3 = productBiz.findAllProductByStypeId(newArrival.getProduct().getStype().getStypeId());
        request.put("list3", list3);
          return "/newarrival/update";
    }
    @ResponseBody
    @RequestMapping("/add")
    public AjaxMsgModel add(NewArrival newArrival,MultipartHttpServletRequest request){
        try {
            MultipartFile file = request.getFile("file");
            String fileName = UUID.randomUUID().toString();
            File newFile = new File(Constants.FILE_PATH+fileName);
            file.transferTo(newFile);
            NewArrvalImg newArrvalImg = new NewArrvalImg();
            newArrvalImg.setNewArrvalImgName(fileName);
            newArrvalImgBiz.save(newArrvalImg);
            NewArrvalImg newArrvalImg1=newArrvalImgBiz.findByName(fileName);
            newArrival.setNewArrvalImgId(newArrvalImg1.getNewArrvalImgId());
            newArrivalBiz.save(newArrival);
        } catch (Exception e) {
            e.printStackTrace();
            return AjaxMsgModel.createfailModel(false);
        }
        return AjaxMsgModel.createSuccessModel(true);
    }
    @ResponseBody
    @RequestMapping("/update")
    public AjaxMsgModel update(NewArrival newArrival,MultipartHttpServletRequest request){
        try {
            MultipartFile file = request.getFile("file");
            if (file.getSize() !=0){
                String fileName = UUID.randomUUID().toString();
                File newFile = new File(Constants.FILE_PATH+fileName);
                file.transferTo(newFile);
                NewArrvalImg newArrvalImg = new NewArrvalImg();
                newArrvalImg.setNewArrvalImgName(fileName);
                newArrvalImgBiz.save(newArrvalImg);
                NewArrvalImg newArrvalImg1=newArrvalImgBiz.findByName(fileName);
                newArrival.setNewArrvalImgId(newArrvalImg1.getNewArrvalImgId());
            }
                newArrivalBiz.update(newArrival);
        } catch (Exception e) {
            e.printStackTrace();
            return AjaxMsgModel.createfailModel(false);
        }
        return AjaxMsgModel.createSuccessModel(true);
    }

}
