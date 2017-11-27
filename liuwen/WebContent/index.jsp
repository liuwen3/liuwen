<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
<head>
<%@ include file="/common/common.jspf"%>

</head>
<body>
<div id="loginDiv" class="easyui-window" title="My Window" style="width:400px;height:200px"   
        data-options="iconCls:'icon-save',modal:true">   
    <form id="ff" action="main/checkUser" method="post">
    
     <table width="100%">
        <tr style="height: 50px;">
          <td>
            &nbsp&nbsp用户名称：<input class="easyui-textbox" type="text" value="111"	id ="userName"style="width:200px" name="userName">
          </td>
        </tr>
        <tr style="height: 50px;">
          <td>
            &nbsp&nbsp用户密码：<input class="easyui-textbox" type="text" value="111"	id ="userPass"style="width:200px" name="userPass">
          </td>
        </tr>
        
      </table>
	
	</form>   
</div> 
	
</body>
<script type="text/javascript">
$(function(){
})
	$('#loginDiv').dialog({
		title : '登陆入口',
		width : 350,
		height : 250,
		closed : false,
		cache : false,
		//设置关闭按钮可见
		closable : false,
		//模式化窗口.如果为true将锁屏
		modal : true,
		buttons:[{
			text:'登陆',
			handler:function(){
				//alert("可以登陆了");
				//启用验证
				$("#ff").form("enableValidation");
				//进行验证，通过就提交
				if($("#ff").form("validate")){
				//提交
						$("#ff").submit();
				
				}
				
			}
		},{
			text:'取消',
			handler:function(){

		}
		}]
		
	
	
})
	//function checkUser(){
		//window.location.href="${proPath}/main/checkUser?userName="+$('#userName').val()+"&userPass="+$('#userPass').val(); 
	/* 	alert($('#userName').val());
	$.post("${proPath}/main/checkUser", { 
		"userName": $('#userName').val(),
		"userPass": $('#userPass').val()
		},
   function(data){
     debugger;
   }, "json"); */
	//}

</script>
</html>
