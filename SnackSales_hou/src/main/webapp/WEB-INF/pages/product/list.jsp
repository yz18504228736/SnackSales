<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<form id="pagerForm" method="post" action="../product/list">
    <input type="hidden" name="pageNum" value="1" />
</form>


<div class="pageHeader">

</div>
<div class="pageContent">
    <div class="panelBar">
        <ul class="toolBar">
            <li><a class="add" href="../product/preAdd" target="navTab"><span>添加</span></a></li>
            <li><a class="delete" href="../product/detele/{productId}" target="ajaxTodo" title="确定要删除吗?"><span>删除</span></a></li>
            <li><a class="edit" href="../product/preUpdate/{productId}" target="navTab"><span>修改</span></a></li>
            <li class="line">line</li>
            <li><a class="icon" href="demo/common/dwz-team.xls" target="dwzExport" targetType="navTab" title="实要导出这些记录吗?"><span>导出EXCEL</span></a></li>
        </ul>
    </div>
    <table class="table" width="100%" layoutH="138">
        <thead>
        <tr>
            <th width="150">商品名称</th>
            <th width="50">商品大类</th>
            <th width="50">商品小类</th>
            <th width="100">商品产地</th>
            <th width="100">商品品牌</th>
            <th width="100">商品数量</th>
            <th width="50">商品发货地</th>
            <th width="50">商品价格</th>
            <th width="100">商品进货时间</th>
            <th width="150">商品描述</th>
            <th width="50">商品状态</th>
            <th width="100">商品规格操作</th>
            <th width="100">商品展示操作</th>
            <th width="100">商品详情操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${productList}" var="product">
            <tr target="productId" rel="${product.productId}">
                <td>${product.productName}</td>
                <td>${product.stype.btype.btypeName}</td>
                <td>${product.stype.stypeName}</td>
                <td>${product.productPro}</td>
                <td>${product.productBrand}</td>
                <td>${product.productNum}</td>
                <td>${product.productFrom}</td>
                <td>${product.productPrice}</td>
                <td>${product.productTime}</td>
                <td>${product.productDesc}</td>
                <td>${product.productState}</td>
                <td><a href="../size/list/${product.productId}" target="navTab">查看</a></td>
                <td><a href="../proDisplay/preAdd/${product.productId}" target="navTab">添加</a>，<a href="../proDisplay/list/${product.productId}" target="navTab">查看</a></td>
                <td><a href="../proDetail/preAdd/${product.productId}" target="navTab">添加</a>,<a href="../proDetail/list/${product.productId}" target="navTab">查看</a></td>
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

