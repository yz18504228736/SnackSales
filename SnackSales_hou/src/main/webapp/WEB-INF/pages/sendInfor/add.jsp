<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<div class="pageContent">
    <form:form method="post" modelAttribute="sendInfor" action="../sendInfor/add" cssClass="pageForm required-validate"
              onsubmit="return iframeCallback(this, navTabAjaxDone);">
        <div class="pageFormContent" layoutH="56">
            <p>
                <label>运费：</label>
                 <form:input path="fee"  cssClass="required"></form:input>
            </p>
            <p>
                <label>发货日期：</label>
                <form:input path="receiveTime" type="text" class="date" readonly="true"/>
                <a class="inputDateButton" href="javascript:;">选择</a>
                <span class="info"></span>
            </p>
            <p>
                <label>配送时间：</label>
                <form:input path="sendTime"  cssClass="required"></form:input>
            </p>

            <h2 class="contentTitle">图片上传</h2>

            <style type="text/css" media="screen">
                .my-uploadify-button {
                    background:none;
                    border: none;
                    text-shadow: none;
                    border-radius:0;
                }

                .uploadify:hover .my-uploadify-button {
                    background:none;
                    border: none;
                }

                .fileQueue {
                    width: 400px;
                    height: 150px;
                    overflow: auto;
                    border: 1px solid #E5E5E5;
                    margin-bottom: 10px;
                }
            </style>

            <div class="pageContent" style="margin: 0 10px" layoutH="50">

                <input id="testFileInput" type="file" name="image"
                       uploaderOption="{
			swf:'uploadify/scripts/uploadify.swf',
			uploader:'demo/common/ajaxDone.html',
			formData:{PHPSESSID:'xxx', ajax:1},
			buttonText:'请选择文件',
			fileSizeLimit:'200KB',
			fileTypeDesc:'*.jpg;*.jpeg;*.gif;*.png;',
			fileTypeExts:'*.jpg;*.jpeg;*.gif;*.png;',
			auto:true,
			multi:true,
			onUploadSuccess:uploadifySuccess,
			onQueueComplete:uploadifyQueueComplete
		}"
                />

                <div class="divider"></div>

                <input id="testFileInput2" type="file" name="image2"
                       uploaderOption="{
			swf:'uploadify/scripts/uploadify.swf',
			uploader:'demo/common/ajaxDone.html',
			formData:{PHPSESSID:'xxx', ajax:1},
			queueID:'fileQueue',
			buttonImage:'uploadify/img/add.jpg',
			buttonClass:'my-uploadify-button',
			width:102,
			auto:false
		}"
                />
                <div class="divider"></div>

                <input id="testFileInput3" type="file" name="image3"
                       uploaderOption="{
			swf:'uploadify/scripts/uploadify.swf',
			uploader:'demo/common/ajaxDone.html',
			formData:{PHPSESSID:'xxx', ajax:1},
			queueID:'fileQueue',
			buttonImage:'uploadify/img/add.jpg',
			buttonClass:'my-uploadify-button',
			width:102,
			auto:false
		}"
                />

                <div id="fileQueue" class="fileQueue"></div>

                <input type="image" src="uploadify/img/upload.jpg" onclick="$('#testFileInput2').uploadify('upload', '*');"/>
                <input type="image" src="uploadify/img/cancel.jpg" onclick="$('#testFileInput2').uploadify('cancel', '*');"/>

            </div>
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
<!--
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
-->