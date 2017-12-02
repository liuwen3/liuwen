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
		        }
		        }],
		      columns : [[ {field:'customName',title:'UI名称',width:'30%'},   
		                   {field:'customAuth',title:'制造者',width:'10%'}, 
		                   {field:'customIndex',title:'页面名称',width:'20%'}, 
	                       {field:'customTime',title:'上传时间',width:'20%'},
	                       {
	                           field : 'action',
	                           title : '操作',
	                           width : '11%',
	                           align : 'center',
	                       formatter : function(value, row, index) {
	                           var thtml = '';
	                           thtml = '<a style="color:green;text-decoration:none" href="javascript:editorcustom(&apos;' + row.id + '&apos;,&apos;' + row.customName + '&apos;,&apos;' + row.customAuth + '&apos;,&apos;' + row.customIndex + '&apos;);">编辑</a>' + '<a style="color:red;text-decoration:none" href="javascript:deletecustom(&apos;' + row.id + '&apos;);">丨删除</a>';
	                           return thtml;
	                         } }
		        			
		        			 ]]
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
	         $('#jiemian').datagrid('reload');
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
	//添加
	 function addjiemian(){
		 var bt = "添加风格";
		 var h = 270;
		 var w = 410;
		 var url = "${proPath}/custom/toaddCustom";
		 tck(bt,w,h,url);
	 } 
	 //编辑
	 function editorcustom(){
		 alert("待开发");
		/*  var bt = "编辑";
		 var h = 270;
		 var w = 410;
		 var url = "${proPath}/custom/toaddCustom";
		 tck(bt,w,h,url); */
	 } 
	 //删除
	  function deletecustom(){
		  $.messager.confirm('确认对话框', '删除该条内容？', function(r){
				if (r){
				    alert("待开发");
				}
			});


	 } 
	 
</script>

