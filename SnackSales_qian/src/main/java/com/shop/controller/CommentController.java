package com.shop.controller;


import com.shop.biz.*;
import com.shop.entity.*;
import com.shop.entity.VO.CommentVo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/comment")
public class CommentController {
    @Resource
    private CommentBiz commentBiz;

    @Resource
    private StypeBiz stypeBiz;

    @Resource
    private ProductBiz productBiz;

    @Resource
    private SizeBiz sizeBiz;

    @Resource
    private OrdersBiz ordersBiz;

    @Resource
    private ProDisplayBiz proDisplayBiz;

    @Resource
    private ProDetailBiz proDetailBiz;
//将查出的用户评论信息传递到页面
//    @RequestMapping("/usercomment/{userId}")
//    public String userComment(@RequestParam(value = "pageNum", defaultValue = "0") int pageNum, @RequestParam(value = "pageSize", defaultValue = "10")int pageSize, @PathVariable(name = "userId") int userId, Model model){
//        List<Comment> list=commentBiz.findAll(userId, pageNum, pageSize);
//        model.addAttribute("commentList",list);
//        return "/user/comment";
//    }

    @RequestMapping("/userComment/{userId}")
    public String userList(@PathVariable("userId") int userId,Model model){
        List<Comment> userCommentList=commentBiz.findAllCommentByUserId(userId);
        List<CommentVo> commentVoList=new ArrayList<CommentVo>();
        for(Comment comment:userCommentList){
            CommentVo commentVo=new CommentVo();
            List<ProDisplay> proDisplayList=proDisplayBiz.findAllByProductId(comment.getProduct().getProductId()) ;
            commentVo.setDisplay(proDisplayList.get(0));
            commentVo.setComment(comment);
            commentVoList.add(commentVo);
        }
        model.addAttribute("commentVoList",commentVoList);
        return "/comment/comment";
    }

    @RequestMapping("/preAddComment")
    public String preAddComment(String proName, Model model,HttpServletRequest request){
        try {
            proName = new String(proName.getBytes("ISO8859-1"), "UTF-8");
            Product product=productBiz.findByProName(proName);
            List<ProDisplay> proDisplayList=proDisplayBiz.findAllByProductId(product.getProductId());
            model.addAttribute("proDisplayList",proDisplayList);
            model.addAttribute("product",product);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return "/comment/addComment";

    }

    @RequestMapping("/addComment")
    public String addComment(HttpServletRequest request){
       User user= (User) request.getSession().getAttribute("currentUser");
        Date currentDate = new Date(System.currentTimeMillis());
       String integerList= request.getParameter("stars");
        String proName=request.getParameter("proName");
        Product product=productBiz.findByProName(proName);
       Comment comment=new Comment();
       comment.setCommentContent(request.getParameter("content"));
       comment.setCommentGrade((Integer.parseInt(request.getParameter("stars"))));
       comment.setUser(user);
       comment.setProduct(product);
       comment.setCommentTime(currentDate);
     commentBiz.saveComment(comment);
     return "redirect:comment/userComment/"+user.getUserId();
    }

    @RequestMapping("proComment/{proId}")
      public String proList(@PathVariable("proId") int proId, Model model){
        List<Comment> proCommentList=commentBiz.findAllCommentByProductId(proId);
        Product product = productBiz.findProductById(proId);
        model.addAttribute("product",product);
        List<Size> sizeList = sizeBiz.findAllSizeByProductId(proId);
        model.addAttribute("sizeList",sizeList);
        List<ProDisplay> proDisplayList = proDisplayBiz.findAllByProductId(proId);
        model.addAttribute("proDisplayList",proDisplayList);
        List<ProDetail> proDetailList = proDetailBiz.findAllByProductId(proId);
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
        model.addAttribute("proCommentList",proCommentList);
        return "product/proDetail";
    }
}
