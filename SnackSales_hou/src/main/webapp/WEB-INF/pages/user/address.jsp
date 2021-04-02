<%--
  Created by IntelliJ IDEA.
  User: Lelouch
  Date: 2017/10/24
  Time: 16:22
  To change this template use File | Settings | File Templates.
--%>
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
                <td align="center" width="20">用户名</td>
                <td align="center" width="20">地址名</td>
                <td align="center" width="20">收货人</td>
                <td align="center" width="20">收货人联系方式</td>
                <td align="center" width="20">邮编</td>
            </tr>
            <c:forEach items="${addressList}" var="adderss">
                <tr target="sid_user" rel="${adderss.addressId}">
                    <td align="center" width="20">${adderss.user.userName}</td>
                    <td align="center" width="20">${adderss.addressName}</td>
                    <td align="center" width="20">${adderss.receiverName}</td>
                    <td align="center" width="20">${adderss.phonenum}</td>
                    <td align="center" width="20">${adderss.unicode}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </form>
</div>
