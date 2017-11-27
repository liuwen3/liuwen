<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/common/common.jspf"%>
<html>
<head>


<title></title>

<script type="text/javascript">
	 $(function(){
	
		 
		 $("#dg").datagrid({
			 url:'${proPath}/custom/customList',    
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
		      columns : [[ {field:'customName',title:'UI名称',width:'10%'},   
		                   {field:'customAuth',title:'制造者',width:'10%'}, 
	                       {field:'customTime',title:'上传时间',width:'10%',
		        			
		        			} ]]
		    });
		 
		 
	
	});
	 function liuwen(row){
		 var s  = row;
		 debugger;
	 } 
	
</script>
</head>

<body>
	<table id="dg"></table>
</body>
</html>