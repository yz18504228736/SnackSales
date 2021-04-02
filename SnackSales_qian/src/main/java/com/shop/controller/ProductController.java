package com.shop.controller;

import com.shop.biz.*;
import com.shop.entity.*;
import com.shop.entity.VO.BtypeListVo;
import com.shop.entity.VO.ProductVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
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
    @Resource
    private ProDisplayBiz proDisplayBiz;
    @Resource
    private ProDetailBiz proDetailBiz;

    @Resource
    private BtypeImgBiz btypeImgBiz;

    @Resource
    private CommentBiz commentBiz;

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

    @RequestMapping("/findProduct/{productId}")
    public String findProductById(@PathVariable("productId") int productId, Model model, HttpServletRequest request) {
        Product product = productBiz.findProductById(productId);
        model.addAttribute("product",product);
        request.getSession().setAttribute("product",product);
        List<Size> sizeList = sizeBiz.findAllSizeByProductId(productId);
        model.addAttribute("sizeList",sizeList);
        List<ProDisplay> proDisplayList = proDisplayBiz.findAllByProductId(productId);
        model.addAttribute("proDisplayList",proDisplayList);
        List<ProDetail> proDetailList = proDetailBiz.findAllByProductId(productId);
        model.addAttribute("proDetailList",proDetailList);
        List<Stype> stypeList1 = stypeBiz.findAllByBtypeId(1);
        model.addAttribute("stypeList1",stypeList1);
        List<Stype> stypeList2 = stypeBiz.findAllByBtypeId(2);
        model.addAttribute("stypeList2",stypeList2);
        List<Stype> stypeList3 = stypeBiz.findAllByBtypeId(3);
        model.addAttribute("stypeList3",stypeList3);
        List<Stype> stypeList4 = stypeBiz.findAllByBtypeId(4);
        model.addAttribute("stypeList4",stypeList4);
        List<Stype> stypeList5 = stypeBiz.findAllByBtypeId(5);
        model.addAttribute("stypeList5",stypeList5);
        List<Stype> stypeList6 = stypeBiz.findAllByBtypeId(6);
        model.addAttribute("stypeList6",stypeList6);
        List<Stype> stypeList7 = stypeBiz.findAllByBtypeId(7);
        model.addAttribute("stypeList7",stypeList7);
        List<Stype> stypeList8 = stypeBiz.findAllByBtypeId(8);
        model.addAttribute("stypeList8",stypeList8);
        List<Stype> stypeList9 = stypeBiz.findAllByBtypeId(9);
        model.addAttribute("stypeList9",stypeList9);
        List<Stype> stypeList10 = stypeBiz.findAllByBtypeId(10);
        model.addAttribute("stypeList10",stypeList10);
        List<Stype> stypeList11 = stypeBiz.findAllByBtypeId(11);
        model.addAttribute("stypeList11",stypeList11);
        List<Comment> proCommentList=commentBiz.findAllCommentByProductId(productId);
        model.addAttribute("proCommentList",proCommentList);
        return "product/proDetail";
    }
    @RequestMapping("/findProducts")
    public String findProductByProName( String proName, Model model, HttpServletRequest request) {
        try{
            proName = new String(proName.getBytes("ISO8859-1"), "UTF-8");
            Product product = productBiz.findByProName(proName);
            model.addAttribute("product",product);
            request.getSession().setAttribute("product",product);
            List<Size> sizeList = sizeBiz.findAllSizeByProductId(product.getProductId());
            model.addAttribute("sizeList",sizeList);
            List<ProDisplay> proDisplayList = proDisplayBiz.findAllByProductId(product.getProductId());
            model.addAttribute("proDisplayList",proDisplayList);
            List<ProDetail> proDetailList = proDetailBiz.findAllByProductId(product.getProductId());
            model.addAttribute("proDetailList",proDetailList);
            List<Stype> stypeList1 = stypeBiz.findAllByBtypeId(1);
            model.addAttribute("stypeList1",stypeList1);
            List<Stype> stypeList2 = stypeBiz.findAllByBtypeId(2);
            model.addAttribute("stypeList2",stypeList2);
            List<Stype> stypeList3 = stypeBiz.findAllByBtypeId(3);
            model.addAttribute("stypeList3",stypeList3);
            List<Stype> stypeList4 = stypeBiz.findAllByBtypeId(4);
            model.addAttribute("stypeList4",stypeList4);
            List<Stype> stypeList5 = stypeBiz.findAllByBtypeId(5);
            model.addAttribute("stypeList5",stypeList5);
            List<Stype> stypeList6 = stypeBiz.findAllByBtypeId(6);
            model.addAttribute("stypeList6",stypeList6);
            List<Stype> stypeList7 = stypeBiz.findAllByBtypeId(7);
            model.addAttribute("stypeList7",stypeList7);
            List<Stype> stypeList8 = stypeBiz.findAllByBtypeId(8);
            model.addAttribute("stypeList8",stypeList8);
            List<Stype> stypeList9 = stypeBiz.findAllByBtypeId(9);
            model.addAttribute("stypeList9",stypeList9);
            List<Stype> stypeList10 = stypeBiz.findAllByBtypeId(10);
            model.addAttribute("stypeList10",stypeList10);
            List<Stype> stypeList11 = stypeBiz.findAllByBtypeId(11);
            model.addAttribute("stypeList11",stypeList11);
        }catch (UnsupportedEncodingException e){
            e.printStackTrace();
        }
        return "product/proDetail";
    }


    @RequestMapping("/btypeList/{btypeId}")
    public String findAllProductByBtypeId(@PathVariable("btypeId") int btypeId,Model model) {
        List<Product> productList1 = productBiz.findAllProductByBtypeId(btypeId);
        List<BtypeListVo> btypeListVoList=new ArrayList<BtypeListVo>();
        List<BtypeImg> btypeImgList=btypeImgBiz.findBtypeImgByBtypeId(btypeId);
        for (Product pro:productList1) {
            BtypeListVo btypeListVo=new BtypeListVo();
            List<ProDisplay> proDisplayList = proDisplayBiz.findAllByProductId(pro.getProductId());
            btypeListVo.setProId(pro.getProductId());
            btypeListVo.setProDesc(pro.getProductDesc());
            btypeListVo.setProImg(proDisplayList.get(0));
            btypeListVo.setProName(pro.getProductName());
            btypeListVo.setProPrice(pro.getProductPrice());
            btypeListVoList.add(btypeListVo);
        }
        model.addAttribute("btypeListVoList",btypeListVoList);
        model.addAttribute("btypeImgList",btypeImgList);
        return "/product/btypeList";
    }

    @RequestMapping("/stypeList/{stypeId}")
    public String findAllProductByStypeId(@PathVariable("stypeId") int stypeId,Model model){
        List<Product> productList2 = productBiz.findAllProductByStypeId(stypeId);
        List<BtypeListVo> stypeListVoList=new ArrayList<BtypeListVo>();
        Stype stype=stypeBiz.findStypeByStypeId(stypeId);
        List<BtypeImg> btypeImgLists=btypeImgBiz.findBtypeImgByBtypeId(stype.getBtype().getBtypeId());
        for (Product pros:productList2) {
            BtypeListVo btypeListVo2=new BtypeListVo();
            List<ProDisplay> proDisplayList2 = proDisplayBiz.findAllByProductId(pros.getProductId());
            btypeListVo2.setProId(pros.getProductId());
            btypeListVo2.setProDesc(pros.getProductDesc());
            btypeListVo2.setProImg(proDisplayList2.get(0));
            btypeListVo2.setProName(pros.getProductName());
            btypeListVo2.setProPrice(pros.getProductPrice());
            stypeListVoList.add(btypeListVo2);
        }
        model.addAttribute("stypeListVoList",stypeListVoList);
        model.addAttribute("btypeImgLists",btypeImgLists);
        return "/product/stypeList";
    }

}
