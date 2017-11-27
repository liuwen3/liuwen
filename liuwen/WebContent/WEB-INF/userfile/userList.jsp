<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/common/common.jspf"%>
<html>
<head>


<title></title>

<script type="text/javascript">
	 /* $(function(){
	
		 
		 $("#dg").datagrid({
			 url:'${proPath}/main/userListcs',    
		      singleSelect : true,
		      width : '100%',
		      height : '100%',
		      fit : true,
		      pageNumber : 1,
		      pageSize : 15,
		      pageList : [ 15, 50, 100 ],
		      pagination : true,
		      rownumbers : true,
		      striped : true,
		      nowrap : true,
		      pagePosition : 'bottom',
		      columns : [[ {field:'userPass',title:'用户编号',width:'10%'},   
		                   {field:'userName',title:'用户名称',width:'10%'}, 
	                       {field:'userAddress',title:'家庭住址',width:'10%',
		        			
		        			} ]]
		    });
		 
		 
	
	});
	 function liuwen(row){
		 var s  = row;
		 debugger;
	 } */
	$(function(){
	 $('#dg').datagrid({ loadFilter: pagerFilter }).datagrid({  
		  singleSelect : true,
	      width : '100%',
	      height : '100%',
	      fit : true,
	      pageNumber : 1,
	      pageSize : 15,
	      pageList : [ 15, 50, 100 ],
	      pagination : true,
	      rownumbers : true,
	      striped : true,
	      nowrap : true,
	      pagePosition : 'bottom',
	      columns : [[ {field:'userPass',title:'用户编号',width:'10%'},   
	                   {field:'userName',title:'用户名称',width:'10%'}, 
                       {field:'userAddress',title:'家庭住址',width:'10%',
	        			
	        			} ]],
         url: '${proPath}/main/userListcs'     //加载数据  
     });  
	}) 

//分页数据的操作  
 function pagerFilter(data) {  
     if (typeof data.length == 'number' && typeof data.splice == 'function') {   // is array  
         data = {  
             total: data.length,  
             rows: data  
         }  
     }  
     debugger;
     var dg = $(this);  
     var opts = dg.datagrid('options');  
     var pager = dg.datagrid('getPager');  
     pager.pagination({  
         onSelectPage: function (pageNum, pageSize) {  
             opts.pageNumber = pageNum;  
             opts.pageSize = pageSize;  
             pager.pagination('refresh', {  
                 pageNumber: pageNum,  
                 pageSize: pageSize  
             });  
             dg.datagrid('loadData', data);  
         }  
     });  
     if (!data.originalRows) {  
         data.originalRows = (data.rows);  
     }  
     var start = (opts.pageNumber - 1) * parseInt(opts.pageSize);  
     var end = start + parseInt(opts.pageSize);  
     data.rows = (data.originalRows.slice(start, end));  
     return data;  
 } 
</script>
</head>

<body>
	<table id="dg"></table>
</body>
</html>