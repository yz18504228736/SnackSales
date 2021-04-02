<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<div class="pageContent">
    <form:form method="post" modelAttribute="newarrival" action="../newarrival/add" cssClass="pageForm required-validate"
               enctype="multipart/form-data" onsubmit="return iframeCallback(this, navTabAjaxDone);">
        <div class="pageFormContent" layoutH="56">
            <p>
                <label>专场类别：</label>
                <form:select path="specialType.specialTypeId" id="specialType" cssClass="required">
                    <option value="">请选择</option>
                    <form:options items="${list1}" itemLabel="specialTypeName" itemValue="specialTypeId"/>
                </form:select>
            </p>
            <p>

                <label>商品小类：</label>
                <form:select path="product.stype.stypeId" id="stype" cssClass="required">
                    <option value="">请选择</option>
                    <form:options items="${list2}" itemLabel="stypeName" itemValue="stypeId"/>
                </form:select>
            </p>
            <p>
                <label>商品名称：</label>
                <form:select path="product.productId" id="product" cssClass="required">
                    <option value="">请选择</option>
                </form:select>
            </p>
            <p>
                <label>商品图片：</label>
                <input name="file" type="file" class="required" onchange="selImage(this)"/>
            </p>
            <p style="height:200px;">
                <img alt="" id="img" src="" height="200px">
            </p>

        </div>
        <div class="formBar">
            <ul>
                <!--<li><a class="buttonActive" href="javascript:;"><span>保存</span></a></li>-->
                <li><div class="buttonActive"><div class="buttonContent"><button type="submit">保存</button></div></div></li>
                <li>
                    <div class="button"><div class="buttonContent"><button type="button" class="close">取消</button></div></div>
                </li>
            </ul>
        </div>
    </form:form>
</div>

<script>
    $(function(){
        var stype = $("#stype");
        var product = $("#product");
        stype.change(function(){
            product.loadUrl("../newarrival/findByStype", {"stypeId":stype.val()});
        });
    });
</script>

<script type="text/javascript">
    function selImage(o) {
        document.getElementById("img").src = getFullPath(o);
    }

    function getFullPath(node){
        var imgURL = "";
        try{
            var file = null;
            if(node.files && node.files[0] ){
                file = node.files[0];
            }else if(node.files && node.files.item(0)) {
                file = node.files.item(0);
            }
            //Firefox 因安全性问题已无法直接通过input[file].value 获取完整的文件路径
            try{
                //Firefox7.0
                imgURL =  file.getAsDataURL();
                //alert("//Firefox7.0"+imgRUL);
            }catch(e){
                //Firefox8.0以上
                imgURL = window.URL.createObjectURL(file);
                //alert("//Firefox8.0以上"+imgRUL);
            }
        }catch(e){
            //支持html5的浏览器,比如高版本的firefox、chrome、ie10
            if (node.files && node.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    imgURL = e.target.result;
                };
                reader.readAsDataURL(node.files[0]);
            }
        }
        return imgURL;
    }
</script>
