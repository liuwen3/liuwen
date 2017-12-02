 <%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  <div>
    <form id="ff1" action="${proPath}/liuwen/custom/addCustom" method="post">
    
     <table width="100%">
        <tr style="height: 50px;">
          <td>
            &nbsp&nbsp风格名称：<input class="easyui-textbox" 	id ="addcustomName" style="width:200px" name="customName">
          </td>
        </tr>
        <tr style="height: 50px;">
          <td>
            &nbsp&nbsp作&nbsp&nbsp者：<input class="easyui-textbox" 	id ="addcustomAuth" style="width:200px" name="customAuth">
          </td>
        </tr>
        <tr style="height: 50px;">
          <td>
            &nbsp&nbsp页面名称：<input class="easyui-textbox" 	id ="addcustomIndex" style="width:200px" name="customIndex">
          </td>
        </tr>
      </table>
       <div style="margin-top: 15px;text-align: center;">
        <span class="easyui-linkbutton c8" style="width:100px;" onclick="addcustomSubmitForm()">提交</span>
        <span class="easyui-linkbutton c4" style="margin-left: 15px;width:100px;" onclick="addcustomClearForm()">清空</span>
      </div>
	
</div>
<script type="text/javascript">
function addcustomSubmitForm() {
	$("#ff1").form('submit', {
	      url : "${proPath}/liuwen/custom/addCustom",
	      onSubmit : function() {
	        return $(this).form('enableValidation').form('validate');
	      },
	      success : function(data) {
	       debugger;
	        var mes = '';
	        if (data == 'su') {
	          CloseWindow();
	          mes = '添加成功';
	        } else {
	          mes = '添加失败';
	        }
	        $.messager.show({
	          title : '提示消息',
	          msg : mes,
	          height : 'auto',
	          timeout : 1000,
	          showType : 'slide'
	        });
	      }
	    });
	
	
    
}
</script> 