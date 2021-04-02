<%--
  Created by IntelliJ IDEA.
  User: Lelouch
  Date: 2017/10/24
  Time: 14:40
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
            <td align="center" width="20">用户姓名</td>
            <td align="center" width="20">真实姓名</td>
            <td align="center" width="20">性别</td>
            <td align="center" width="20">生日</td>
            <td align="center" width="20">邮箱</td>
            <td align="center" width="60">操作</td>
        </tr>
        <c:forEach items="${userList}" var="user">
            <tr target="sid_user" rel="${user.userId}">
                <td align="center" width="20">${user.userName}</td>
                <td align="center" width="20">${user.userTruename}</td>
                <td align="center" width="20">${user.userSex}</td>
                <td align="center" width="20">${user.userBirth}</td>
                <td align="center" width="20">${user.userMail}</td>
                <td align="center" width="60">
                    <a href="../shoppingcar/usershoppingcart/${user.userId}" target="navTab">购物车详情 </a>
                    <a href="../orders/userorders/${user.userId}" target="navTab">订单管理 </a>
                    <a href="../favorite/userfavorite/${user.userId}" target="navTab">个人收藏 </a>
                    <a href="../orders/bought" target="navTab">购买记录 </a>
                    <a href="../address/list/${user.userId}" target="navTab">地址管理 </a>
                    <a href="../comment/usercomment/${user.userId}" target="navTab">用户评论</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    </form>
</div>

