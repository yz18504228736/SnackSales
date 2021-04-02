<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<form id="pagerForm" method="post" action="../menu/list">
    <input type="hidden" name="pageNum" value="${pageNum}" />
</form>


<div class="pageHeader">
    <form onsubmit="return navTabSearch(this);" action="demo_page1.html" method="post">
        <div class="searchBar">

            <table class="searchContent">
                <tr>
                    <td>
                        我的客户：<input type="text" name="keyword" />
                    </td>
                    <td>
                        <select class="combox" name="province">
                            <option value="">所有省市</option>
                            <option value="北京">北京</option>
                            <option value="上海">上海</option>
                            <option value="天津">天津</option>
                            <option value="重庆">重庆</option>
                            <option value="广东">广东</option>
                            <option value="武汉">武汉</option>
                            <option value="西安">西安</option>
                            <option value="深圳">深圳</option>
                            <option value="云南">云南</option>
                            <option value="成都">成都</option>
                            <option value="南京">南京</option>
                        </select>
                    </td>
                    <td>
                        建档日期：<input type="text" class="date" readonly="true" />
                    </td>
                </tr>
            </table>
            <div class="subBar">
                <ul>
                    <li><div class="buttonActive"><div class="buttonContent"><button type="submit">检索</button></div></div></li>
                </ul>
            </div>
        </div>
    </form>
</div>
<div class="pageContent">
    <div class="panelBar">
        <ul class="toolBar">
            <li><a class="add" href="../menu/preAdd" target="navTab"><span>添加</span></a></li>
            <li><a class="delete" href="../menu/delete/{sid_menu}" target="ajaxTodo" title="确定要删除吗?"><span>删除</span></a></li>
            <li><a class="edit" href="../menu/preUpdate/{sid_menu}" target="navTab"><span>修改</span></a></li>
            <li class="line">line</li>
            <li><a class="icon" href="demo/common/dwz-team.xls" target="dwzExport" targetType="navTab" title="实要导出这些记录吗?"><span>导出EXCEL</span></a></li>
        </ul>
    </div>
    <table class="table" width="100%" layoutH="138">
        <thead>
        <tr>

            <th width="30">编号</th>
            <th width="80">菜谱类别</th>
            <th width="150">菜谱描述</th>
            <th width="80">菜谱名字</th>
            <th width="50">菜谱步骤</th>
            <th width="50" align="center">下载图片</th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${list}" var="menu">
            <tr target="sid_menu" rel="${menu.menuId}">
                <td>${menu.menuId}</td>
                <td>${menu.menutype.menuTypeName}</td>
                <td>${menu.menuDesc}</td>
                <td><a target="dialog" mask="true" width="800" height="600" href="../show/${menu.menuImg}" >${menu.menuName}</a></td>
                <td>${menu.menuContent}</td>
                <td><a href="../download/${menu.menuImg}">${menu.menuName}</a></td>
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

