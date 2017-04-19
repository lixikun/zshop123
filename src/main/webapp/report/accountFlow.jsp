<%@ page contentType="text/html; charset=utf-8" language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
	String baseUri = request.getContextPath();
%>
<jsp:include page="/admin/main/head.jsp"></jsp:include>
<div region="center" class="easyui-layout">
	<div region="center" style="padding:2px;" class="easyui-layout">
	    <div region="north" style="height:50px;" id="search">
	        <div region="center" style="margin-top: 10px;margin-left: 10px;">
	            <label>会员编号：</label><input type="text" name="search_code">
	            <label>会员名称：</label><input type="text" name="search_name">
	            <label>币种类型：</label>
	            <select class="easyui-combobox" name="search_coin_type" style="width:80px;">
	                <option value="">--请选择--</option>
	                <option value="1">奖金币</option>
	                <option value="2">电子币</option>
	                <option value="3">重消币</option>
	            </select>
	            <a href="javascript:void(0);" class="easyui-linkbutton" id="search_btn" iconCls="icon-search">搜索</a>
	        </div>
	    </div>
	
	    <div region="center" title="员工列表" >
	        <table id="staffList"  rownumbers="true" pagination="true"
	               fitColumns="false" nowrap="false" showFooter="true" singleSelect="true" style="height:400px">
	            <thead>
	            <tr>
	                <th field="user_id" hidden>员工ID</th>
	                <th field="user_code" width="140">会员编号</th>
	                <th field="user_name" width="140">会员名称</th>
	                <th field="order_id" width="100">流水号</th>
	                <th field="coin_type_name" width="100">币种类型</th>
	                <th field="create_type_name" width="100">产生类型</th>
	                <th field="coin_num" width="100">金额</th>
	                <th field="oper_user_name" width="100">相关人员</th>
	                <th field="create_time" width="140">操作时间</th>
	            </tr>
	            </thead>
	        </table>
	    </div>
    </div>
</div>
<script type="text/javascript" src="js/accountFlow.js"></script>