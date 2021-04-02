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
                <td align="center" width="20">商品名</td>
                <td align="center" width="20">评价内容</td>
                <td align="center" width="20">评分</td>
                <td align="center" width="20">评论时间</td>
            </tr>
            <c:forEach items="${commentList}" var="comment">
                <tr target="sid_user" rel="${comment.commentId}">
                    <td align="center" width="20">${comment.user.userName}</td>
                    <td align="center" width="20">${comment.product.productName}</td>
                    <td align="center" width="20">${comment.commentContent}</td>
                    <td align="center" width="20">${comment.commentGrade}</td>
                    <td align="center" width="20">${comment.commentTime}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </form>
</div>
