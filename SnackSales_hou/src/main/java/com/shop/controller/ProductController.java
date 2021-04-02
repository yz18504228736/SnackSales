package com.shop.controller;

import com.shop.biz.BtypeBiz;
import com.shop.biz.ProductBiz;
import com.shop.biz.SizeBiz;
import com.shop.biz.StypeBiz;
import com.shop.entity.AjaxMsgModel;
import com.shop.entity.Btype;
import com.shop.entity.Product;
import com.shop.entity.Stype;
import com.shop.entity.VO.ProductVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/product")
public class ProductController {
    @Resource
    private ProductBiz productBiz;
    @Resource
    private StypeBiz stypeBiz;
    @Resource
    private BtypeBiz btypeBiz;
    @Resource
    private SizeBiz sizeBiz;

//    查看所有产品
    @RequestMapping("/list")
    public String list(Model model,int pageNum) {
        List<Product> list = productBiz.findAllProductByPage(pageNum);
        model.addAttribute("productList",list);
        long totalCount = productBiz.findCount();
        model.addAttribute("totalCount",totalCount);
        model.addAttribute("pageNum",pageNum);
        return "/product/list";
    }

//    产品的预添加
    @RequestMapping("/preAdd")
    public String preAdd(Model model) {
        ProductVO productVO = new ProductVO();
        model.addAttribute("productVO",productVO);
        List<Btype> btypeList = btypeBiz.findAllBtype();
        model.addAttribute("btypeList",btypeList);
        return "/product/add";
    }

//    产品添加
    @ResponseBody
    @RequestMapping("/add")
    public AjaxMsgModel add(ProductVO productVO) {
        try {
            productBiz.saveProductVO(productVO);
        } catch (Exception e) {
            AjaxMsgModel.createfailModel(false);
        }
       return AjaxMsgModel.createSuccessModel(true);
    }

//    根据产品Id删除产品
    @ResponseBody
    @RequestMapping("/detele/{productId}")
    public AjaxMsgModel deteleProductById(@PathVariable("productId") int productId) {
        try {
            int row = productBiz.deleteProductById(productId);
            System.out.println(row);
        } catch (Exception e) {
            e.printStackTrace();
            return AjaxMsgModel.createfailModel(false);
        }
        return AjaxMsgModel.createSuccessModel(true);
    }

    @RequestMapping("/preUpdate/{productId}")
    public String preUpdate(@PathVariable("productId") int productId,Model model) {
        Product product = productBiz.findProductById(productId);
        model.addAttribute("product",product);
        List<Btype> btypeList = btypeBiz.findAllBtype();
        model.addAttribute("btypeList",btypeList);
        return "/product/update";
    }

    @ResponseBody
    @RequestMapping("/update")
    public AjaxMsgModel update(Product product) {
        try {
            int row = productBiz.updateProduct(product);
        } catch (Exception e) {
            e.printStackTrace();
            return AjaxMsgModel.createfailModel(false);
        }
        return AjaxMsgModel.createSuccessModel(true);
    }

//    根据大类Id查询对应的所有小类
    @ResponseBody
    @RequestMapping("/stypes")
    public List<Stype> findStypes(int btypeId) {
        List<Stype> stypeList = stypeBiz.findAllByBtypeId(btypeId);
        System.out.println(stypeList);
        return stypeList;
    }
}
