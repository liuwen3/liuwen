<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<c:set var="proPath" value="${pageContext.request.contextPath}" />
<link rel="stylesheet" type="text/css"href="${proPath}/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${proPath}/easyui/themes/icon.css">
<script type="text/javascript" src="${proPath}/js/jquery-3.2.1.min.js"></script>
 <link rel="stylesheet" href="${proPath}/bootstrap3.2.2/css/bootstrap.min.css" >
<script type="text/javascript" src="${proPath}/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${proPath}/easyui/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="${proPath}/bootstrap3.2.2/js/bootstrap.min.js" ></script>
<style type="text/css">
body{

	background-repeat: no-repeat;

	background-position: center 0 #000;

	background-color: #000;

	background-image: url(${proPath}/img/a.jpg);

}

.snowbg{width:1000px;height:600px;clear:both;margin:0 auto;position:relative;overflow:hidden;}

.snow{position:absolute;top:0;color:#fff;}
</style>
</head>
<body>
<div class="snowbg">
<button onclick="loginAdmin()" data-target="#myModal" data-toggle="modal" type="button" class="btn btn-default">点击登录</button>
</div>
 <!-- <div id="loginDiv"  class="easyui-window" title="My Window" style="width:400px;height:200px"   
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
</div>   -->
	
</body>
<script type="text/javascript">
$(function(){

	  //var d="<div class='snow'>❅<div>"
    var d="<div class='snow'>666<div>"
				setInterval(function(){

					var f=$(document).width();

					var e=Math.random()*f-100;

					var o=0.3+Math.random();

					var fon=10+Math.random()*30;

					var l = e - 100 + 200 * Math.random();

					var k=2000 + 5000 * Math.random();

					$(d).clone().appendTo(".snowbg").css({

						left:e+"px",

						opacity:o,

						"font-size":fon,

					}).animate({

					  top:"400px",

						left:l+"px",

						opacity:0.1,

					},k,"linear",function(){$(this).remove()})

				},200)

	})
	
	//点击弹出框  使用easyUI
	function loginAdmin(){
	var form = '<form id="ff"action="main/checkUser"method="post"><table width="100%"><tr style="height: 50px;"><td>&nbsp&nbsp用户名称：<input class="easyui-textbox"type="text"value="111"id="userName"style="width:200px"name="userName"></td></tr><tr style="height: 50px;"><td>&nbsp&nbsp用户密码：<input class="easyui-textbox"type="text"value="111"id="userPass"style="width:200px"name="userPass"></td></tr></table></form><div style="margin-top: 15px;text-align: center;"><span class="easyui-linkbutton c8"style="width:100px;"onclick="login()">提交</span><span class="easyui-linkbutton c4"style="margin-left: 15px;width:100px;"onclick="clean()">清空</span></div>';
var t = $('<div style="overflow: hidden;"></div>').appendTo($("body"));
          $(t).window({
            width : 335,
            height : 230,
            title : '登录',
            draggable : true,
            collapsible : false,
            minimizable : false,
            maximizable : false,
            resizable : false,
            content : form,
            modal : true,
            onClose : function() {
              $(t).window('destroy', true);
              $(t).remove();
              $(".window-shadow").remove();
              $(".window-mask").remove();
            }
          });
}

//点击提交from表单
function login(){
	$("#ff").submit();
}
//清空from表单
function clean(){
	$("#ff").form('clear');
}
	/* $('#loginDiv').dialog({
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
		
	
	
})  */


</script>
</html>
