<%@ page pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<form id="pagerForm" method="post" action="../stuInfo/list">
	<input type="hidden" name="pageNum" value="1" />
</form>


<div class="pageHeader">

</div>
<div class="pageContent">
	<div class="panelBar">
		<ul class="toolBar">
			<li><a class="add" href="../sendInfor/preAdd" target="navTab"><span>添加</span></a></li>
			<li><a class="delete" href="../sendInfor/delete/{infoId}" target="ajaxTodo" title="确定要删除吗?"><span>删除</span></a></li>
			<li><a class="edit" href="../sendInfor/preUpdate/{infoId}" target="navTab"><span>修改</span></a></li>
			<li class="line">line</li>
			<li><a class="icon" href="demo/common/dwz-team.xls" target="dwzExport" targetType="navTab" title="实要导出这些记录吗?"><span>导出EXCEL</span></a></li>
		</ul>
	</div>
	<table class="table" width="100%" layoutH="138">
		<thead>
		<tr>
			<th width="80"></th>
			<th width="120">编号</th>
			<th>运费</th>
			<th>送货日期</th>
			<th>配送时间</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach items="${sendinforList}" var="sendInfor">
			<tr target="infoId" rel="${sendInfor.infoId}">
				<td></td>
				<td>${sendInfor.infoId}</td>
				<td>${sendInfor.fee}</td>
				<td>${sendInfor.receiveTime}</td>
				<td>${sendInfor.sendTime}</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="panelBar">
		<div class="pages">
			<span>显示</span>
			<select class="combox" name="numPerPage" onchange="navTabPageBreak({numPerPage:this.value})">
				<option value="20">20</option>
				<option value="50">50</option>
				<option value="100">100</option>
				<option value="200">200</option>
			</select>
			<span>条，共${totalCount}条</span>
		</div>

		<div class="pagination" targetType="navTab" totalCount="${totalCount}" numPerPage="20" pageNumShown="10" currentPage="${pageNum}"></div>

	</div>
</div>
