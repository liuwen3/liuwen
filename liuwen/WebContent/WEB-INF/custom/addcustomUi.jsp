 <%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/common/common.jspf"%>
  
    <form id="ff1" action="main/checkUser" method="post">
    
     <table width="100%">
        <tr style="height: 50px;">
          <td>
            &nbsp&nbsp风格名称：<input class="easyui-textbox" type="text" value="111"	id ="customName" style="width:200px" name="userName">
          </td>
        </tr>
        <tr style="height: 50px;">
          <td>
            &nbsp&nbsp作者：<input class="easyui-textbox" type="text" value="111"	id ="customAuth" style="width:200px" name="userPass">
          </td>
        </tr>
       <div style="margin-top: 15px;text-align: center;">
        <span class="easyui-linkbutton c8" style="width:100px;" onclick="addDeploySubmitForm()">提交</span>
        <span class="easyui-linkbutton c4" style="margin-left: 15px;width:100px;" onclick="addDeployClearForm()">清空</span>
      </div>
      </table>
	
</div>
<script type="text/javascript">
function addDeploySubmitForm() {
$('#ff1').form({    
      
    onSubmit: function(){    
    	return $(this).form('enableValidation').form('validate');
    },    
    success:function(data){    
        alert(data)    
    }    
});    
}
</script> 