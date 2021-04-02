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
            <li><a class="add" href="../btype/preAdd" target="navTab"><span>添加</span></a></li>
            <li><a class="delete" href="../btype/delete/{btypeId}" target="ajaxTodo" title="确定要删除吗?"><span>删除</span></a></li>
            <li><a class="edit" href="../btype/preUpdate/{btypeId}" target="navTab"><span>修改</span></a></li>
            <li class="line">line</li>
            <li><a class="icon" href="demo/common/dwz-team.xls" target="dwzExport" targetType="navTab" title="实要导出这些记录吗?"><span>导出EXCEL</span></a></li>
        </ul>
    </div>
    <table class="table" width="100%" layoutH="138">
        <thead>
        <tr>
            <th width="100">大类编号</th>
            <th width="100">大类名称</th>
            <th width="100">大类图片</th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${btypeList}" var="btype">
            <tr target="btypeId" rel="${btype.btypeId}">
                <td>${btype.btypeId}</td>
                <td>${btype.btypeName}</td>
                <td><a href="../btypeImg/preAddImg/${btype.btypeId}" target="navTab">添加</a>,<a href="../btypeImg/list/${btype.btypeId}" target="navTab">查看</a></td>
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

