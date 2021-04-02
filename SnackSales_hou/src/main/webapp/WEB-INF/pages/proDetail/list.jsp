<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<form id="pagerForm" method="post" action="../newarrival/list">
    <input type="hidden" name="pageNum" value="${pageNum}" />
</form>


<div class="pageHeader">

</div>
<div class="pageContent">
    <div class="panelBar">
        <ul class="toolBar">
            <li><a class="delete" href="../proDetail/delete/{proDetailId}" target="ajaxTodo" title="确定要删除吗?"><span>删除</span></a></li>
            <li><a class="edit" href="../proDetail/preUpdate/{proDetailId}" target="navTab"><span>修改</span></a></li>
            <li class="line">line</li>
            <li><a class="icon" href="demo/common/dwz-team.xls" target="dwzExport" targetType="navTab" title="实要导出这些记录吗?"><span>导出EXCEL</span></a></li>
        </ul>
    </div>
    <table class="table" width="100%" layoutH="138">
        <thead>
        <tr>
            <th width="240">规格</th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${proDetailList}" var="proDetail">
            <tr target="proDetailId" rel="${proDetail.proDetailId}">
                <td><a target="dialog" mask="true" width="800" height="600" href="../show/${proDetail.proDetailImg}">产品详情图片</a></td>
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

