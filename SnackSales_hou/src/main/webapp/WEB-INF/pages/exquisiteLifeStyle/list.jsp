<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<form id="pagerForm" method="post" action="../exquisiteLifeStyle/list">
    <input type="hidden" name="pageNum" value="${pageNum}" />
</form>

<div class="pageContent">
    <div class="panelBar">
        <ul class="toolBar">
            <li><a class="add" href="../exquisiteLifeStyle/preAdd" target="navTab"><span>添加</span></a></li>
            <li><a class="delete" href="../exquisiteLifeStyle/delete/{sid_exquisiteLifeStyle}" target="ajaxTodo" title="确定要删除吗?"><span>删除</span></a></li>
            <li><a class="edit" href="../exquisiteLifeStyle/preUpdate/{sid_exquisiteLifeStyle}" target="navTab"><span>修改</span></a></li>
            <li class="line">line</li>
            <li><a class="icon" href="demo/common/dwz-team.xls" target="dwzExport" targetType="navTab" title="实要导出这些记录吗?"><span>导出EXCEL</span></a></li>
        </ul>
    </div>
    <table class="table" width="100%" layoutH="138">
        <thead>
        <tr>
            <th width="20"></th>
            <th width="50">优质生活专区编号</th>
            <th width="150">专场类别</th>
            <th width="150">商品小类</th>
            <th width="150">商品名称</th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${list}" var="exquisiteLifeStyle">
            <tr target="sid_exquisiteLifeStyle" rel="${exquisiteLifeStyle.lifestyleId}">
                <td></td>
                <td>${exquisiteLifeStyle.lifestyleId}</td>
                <td>${exquisiteLifeStyle.specialType.specialTypeName}</td>
                <td>${exquisiteLifeStyle.stype.stypeName}</td>
                <td>${exquisiteLifeStyle.product.productName}</td>
                <td></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <div class="panelBar">
        <div class="pages">
            <span>显示20条，共${totalCount}条</span>
        </div>

        <div class="pagination" targetType="navTab" totalCount="${totalCount}" numPerPage="20" pageNumShown="10" currentPage="${pageNum}"></div>

    </div>
</div>

