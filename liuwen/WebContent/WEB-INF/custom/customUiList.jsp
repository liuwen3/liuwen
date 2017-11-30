<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/common/common.jspf"%>


	<table id="jiemian"></table>
<script type="text/javascript">
	 $(function(){
	
		 
		 $("#jiemian").datagrid({
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
		      toolbar : [ {
		          text : '添加界面',
		          iconCls : 'icon-add2',
		          handler : function() {
		            addjiemian();
		          }
		        }, {
		          text : '修改界面名称',
		          iconCls : 'icon-knowledge_dlpx',
		          handler : function() {
		            editorjiemian();
		          }
		        }, {
		          text : '删除界面',
		          iconCls : 'icon-book_open',
		          handler : function() {
		            deletejiemian();
		          }
		        }],
		      columns : [[ {field:'customName',title:'UI名称',width:'35%'},   
		                   {field:'customAuth',title:'制造者',width:'30%'}, 
	                       {field:'customTime',title:'上传时间',width:'30%',
		        			
		        			} ]]
		    });
		 
		 
	
	});
	//主界面封装弹出框
	 function tck(zsflmc,w,h,url_tck){
	 	var t = $('<div style="overflow: hidden;"></div>').appendTo($("body"));
	     $(t).window({
	       title :  zsflmc,
	       iconCls : 'icon-add2',
	       width : w,
	       height : h,
	       draggable : true,
	       collapsible : false,
	       minimizable : false,
	       maximizable : true,
	       resizable : false,
	       href : url_tck,
	       modal : true,
	       onClose : function() {
	         $('#knowLedgeList_table').datagrid('reload');
	         $(t).window('destroy', true);
	         $(t).remove();
	         $(".window-shadow").remove();
	         $(".window-mask").remove();
	       }
	     });
	     CloseWindow = function() {
	       $(t).window('close');
	     };
	 }
	 function addjiemian(){
		 var bt = "添加风格";
		 var h = 300;
		 var w = 450;
		 var url = "${proPath}/custom/toaddCustom";
		 tck(bt,w,h,url);
	 } 
	
</script>

