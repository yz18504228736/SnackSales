<%@ page pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="pageHeader">

</div>
<div class="pageContent">
    <form action="../data/showData" method="post" onsubmit="return navTabSearch(this)">
        <input type="hidden" name="pageNum" value="1" />
        <table class="table" width="100%" layoutH="138">
            <thead align="center">销量排行</thead>
            <tbody>

            <tr>
                <td align="center" width="20">商品名</td>
                <td align="center" width="20">小类</td>
                <td align="center" width="20">大类</td>
                <td align="center" width="20">销量（/件）</td>
            </tr>
            <c:forEach items="${dataList}" var="data">
                <tr>
                    <td align="center" width="20">${data.proName}</td>
                    <td align="center" width="20">${data.sTypeName}</td>
                    <td align="center" width="20">${data.bTypeName}</td>
                    <td align="center" width="20">${data.sellNum}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </form>
    <div class="panelBar">
        <div class="pages">
            <span>显示10</span>

            <span>条，共${totalCount}条</span>
        </div>

        <div class="pagination" targetType="navTab" totalCount="${totalCount}" numPerPage="10" pageNumShown="10" currentPage="${pageNum}"></div>

    </div>
</div>
