<%@ page pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="pageHeader">

</div>
<div class="pageContent">
    <form action="../user/userinfo" method="post" onsubmit="return navTabSearch(this)">
        <input type="hidden" name="pageNum" value="1" />
        <table class="table" width="100%" layoutH="138">
            <tbody>
            <tr>
                <td align="center" width="20">商品名</td>
                <td align="center" width="20">价格</td>
                <td align="center" width="20">规格</td>
                <td align="center" width="20">实物图</td>
            </tr>
            <c:forEach items="${boughtList}" var="bought">
                <tr target="sid_user" rel="${bought.orderId}">
                    <td align="center" width="20">${bought.orderProName}</td>
                    <td align="center" width="20">${bought.orderProPrice}</td>
                    <td align="center" width="20">${bought.orderProSize}</td>
                    <td align="center" width="20"><img width="50px" height="50px" src="../shows/${bought.orderProImg}"></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </form>
</div>
