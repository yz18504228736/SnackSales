<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<div class="pageContent">
    <form:form method="post" commandName="productVO" modelAttribute="productVO" action="../product/add" cssClass="pageForm required-validate"
               enctype="multipart/form-data" onsubmit="return iframeCallback(this, navTabAjaxDone);">
        <div class="pageFormContent" layoutH="56">
            <p>
                <label>商品大类：</label>
                <form:select path="btypeId" id="btype" cssClass="required">
                    <option value="">请选择</option>
                    <form:options items="${btypeList}" itemLabel="btypeName" itemValue="btypeId"/>
                </form:select>
            </p>
            <p>
                <label>商品小类：</label>
                <form:select path="stypeId" id="stype" cssClass="required">
                </form:select>
            </p>
            <p>
            </p>
            <p>
                <label for="product.productName">商品名称：</label>
                <form:input path="product.productName"></form:input>
            </p>
            <p>
                <label for="product.productPro">商品产地：</label>
                <form:input path="product.productPro"></form:input>
            </p>
            <p>
            </p>
            <p>
                <label for="product.productBrand">商品品牌：</label>
                <form:input path="product.productBrand"></form:input>

            </p>
            <p>
                <label for="product.productNum">商品数量：</label>
                <form:input path="product.productNum"></form:input>
            </p>
            <p>
            </p>
            <p>
                <label for="product.productFrom">商品发货地：</label>
                <form:input path="product.productFrom"></form:input>
            </p>
            <p>
                <label for="product.productPrice">商品价格：</label>
                <form:input path="product.productPrice"></form:input>
            </p>
            <p>
            </p>
            <p>
                <label>进货时间：</label>
                <form:input path="product.productTime" type="text" class="date" readonly="true" ></form:input>
                <a class="inputDateButton" href="javascript:;">选择</a>
                <span class="info">必填</span>
            </p>
            <p>
                <label for="product.productDesc">商品描述：</label>
                <form:input path="product.productDesc"></form:input>
            </p>
            <p>
            </p>
            <p>
                <label for="product.productState">商品状态：</label>
                <form:input path="product.productState"></form:input>
            </p>
            <p>
            </p>
            <p>
            </p>
            <p>
                <label for="sizes">商品规格：</label>
                <form:input path="sizes"></form:input>
            </p>
            <p>
                <label for="sizes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                <form:input path="sizes"></form:input>
            </p>
            <p>
                <label for="sizes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                <form:input path="sizes"></form:input>
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
    
    $(function () {
        $("#btype").change(function () {
            var btype = $("#btype");
            $.get("../product/stypes", {"btypeId":btype.val()}, function (data) {
                var stype = $("#stype")[0];
//                $("#stypeId").empty();
                stype.options.length = 0;
                $.each(data, function (index, obj) {
                    stype.options.add(new Option(obj.stypeName,obj.stypeId));
//                    $("#stypeId").append("<option value=\""+obj.stypeId+"\">"+obj.stypeName+"</option>");
                });
            });
        });
    })

</script>