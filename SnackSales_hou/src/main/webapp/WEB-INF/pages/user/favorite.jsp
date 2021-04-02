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
                <td align="center" width="20">商品价格</td>
                <td align="center" width="20">商品规格</td>
                <td align="center" width="20">用户名</td>
                <td align="center" width="20">商品相片</td>
            </tr>
            <c:forEach items="${favoriteList}" var="favorite">
                <tr target="sid_user" rel="${favorite.favoriteId}">
                    <td align="center" width="20">${favorite.favoriteProName}</td>
                    <td align="center" width="20">${favorite.favoriteProPrice}</td>
                    <td align="center" width="20">${favorite.favoriteProSize}</td>
                    <td align="center" width="20">${favorite.user.userName}</td>
                    <td align="center" width="20"><img width="50px" height="50px" src="../shows/${favorite.favoriteProImg}"></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </form>
</div>
