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
                <td align="center" width="20">总价格</td>
                <td align="center" width="20">订单时间</td>
                <td align="center" width="20">订单状态</td>
            </tr>
            <c:forEach items="${ordersList}" var="orders">
                <tr target="sid_user" rel="${orders.orderName}">

                    <td align="center" width="20">共计${orders.count}件商品</td>
                    <td align="center" width="20">${orders.price}元</td>
                    <td align="center" width="20">${orders.date}</td>
                    <td align="center" width="20">${orders.orderState.stateName}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </form>
</div>
