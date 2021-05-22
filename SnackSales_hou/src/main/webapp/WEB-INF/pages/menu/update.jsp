<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<div class="pageContent">
    <form:form method="post" modelAttribute="menu" action="../menu/update" class="pageForm required-validate"
               enctype="multipart/form-data" onsubmit="return iframeCallback(this, navTabAjaxDone);">
        <input type="hidden" name="menuId" value="${menu.menuId}"/>
        <div class="pageFormContent" layoutH="56">
            <p>
                <label>零食类别：</label>
                <form:select path="menutype.menuTypeId" items="${list}" itemLabel="menuTypeName" itemValue="menuTypeId" id="menutype" cssClass="required">
                </form:select>
            </p>
            <p>
                <label>零食描述：</label>
                <input name="menuDesc" class="required" type="text" size="30" value="${menu.menuDesc }"/>
            </p>
            <p>
                <label>零食名字：</label>
                <input name="menuName" class="required" type="text" size="30" value="${menu.menuName }"/>
            </p>

            <p>
                <label>商品图片：(不修改不选图)</label>
                <input name="file" type="file" onchange="selImage(this)"/>
            </p>
            <p style="height:200px;">
                <img alt="" id="img" src="../download/${menu.menuImg }" height="200px">
            </p>

            <p>
                <label>零食步骤：</label>
                <textarea name="menuContent" value="${menu.menuContent }" class="editor" rows="15" cols="80" ></textarea>
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
</script>
