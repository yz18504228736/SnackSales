<%@ page pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="pageHeader">

</div>
<div class="pageContent">
    <form action="../shoppingcar/usershoppingcart/${user.userId}" method="post" onsubmit="return navTabSearch(this)">
        <input type="hidden" name="pageNum" value="1" />
        <table class="table" width="100%" layoutH="138">
            <tbody>
            <tr>
                <td align="center" width="20">商品名</td>
                <td align="center" width="20">商品价格</td>
                <td align="center" width="20">购买数量</td>
                <td align="center" width="20">用户名</td>
            </tr>
            <c:forEach items="${shoppingcartList}" var="shoppingcar">
                <tr target="sid_user" rel="${shoppingcar.shoppingcartId}">
                    <td align="center" width="20">${shoppingcar.shoppingcartProName}</td>
                    <td align="center" width="20">${shoppingcar.shoppingcartProPrice}</td>
                    <td align="center" width="20">${shoppingcar.shoppingcartProNum}</td>
                    <td align="center" width="20">${shoppingcar.user.userName}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </form>
</div>