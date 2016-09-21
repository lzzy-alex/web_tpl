<%@ page language="java" pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%
   String path = request.getContextPath();
%>
<!doctype html>
<html>

<head>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<script type="text/javascript" src="assert/js/common.js"></script>
</head>

<body>
<!-- content start -->
<div class="foo">
	<div class="table_list">
		<form class="edit_form" action="server/servlet.jsp" enctype="multipart/form-data" method="post"  target="hidden_frame" >
		<iframe name="hidden_frame" style="display:none;"></iframe>
		<input type="hidden" name="id" value="" />
		<table>
		<tr>
			<td width="120px;">Name：</td>
			<td width="250px;"><input type="text" name="name" value="" datatype="*6-20" errormsg="不为空, 6-20字符"/></td>
			<td><div class="Validform_checktip">不为空, 6-20字符</div></td>
		</tr>
		<tr>
			<td width="120px;">Price：</td>
			<td width="250px;"><input type="text" name="price" value="" datatype="float5-2" errormsg="输入格式：3.00 " /></td>
			<td><div class="Validform_checktip">输入格式：3.00 </div></td>
		</tr>
		<tr>
			<td width="120px;">Type：</td>
			<td width="250px;">
				<select name="type">
					<option value="0">Cat</option>
					<option value="1">Dog</option>
				</select>
			</td>
			<td></td>
		</tr>
		<tr>
			<td width="120px;">Date：</td>
			<td width="250px;">
				<input type="text" class="inputxt" name="date"  autocomplete="off"  datatype="_date" value=""  onClick="WdatePicker({startDate:'%y/%M/01 00:00:00',dateFmt:'yyyy-MM-dd',alwaysUseStartDate:true})"/>
			</td>
			<td><div class="Validform_checktip">Pick a date</div></td>
		</tr>
		<tr>
			<td width="120px;">Image：</td>
			<td width="250px;"><input type="file" name="img" datatype="_img" errormsg="请上传照片, 不大于5MB"  ignore="ignore"></td>
			<td>
				<div class="Validform_checktip">不大于5MB</div>
			</td>
		</tr>
		</table>
		
		<div class="btn_wrapper">
			<div class="line"></div>
			<input type="reset" value="重 置" class="form_submti_btn"/>
			<input type="submit" value="提 交" class="form_submti_btn"/>
		</div>
    
	</form>
	</div>
	
</div>

</body>
</html>