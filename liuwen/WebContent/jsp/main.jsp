<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
<head>
<%@ include file="/common/common.jspf"%>

</head>
<body class="easyui-layout">   
    <div data-options="region:'north'" style="height:100px;"><div style="height:90px;background-image: url('${proPath}/img/mainStyle.jpg')"></div></div>   
    <!-- <div data-options="region:'south',title:'South Title',split:true" style="height:100px;"></div> -->   
   <!--  <div data-options="region:'east',iconCls:'icon-reload',title:'East',split:true" style="width:100px;"></div>    -->
    <div data-options="region:'west',title:'West',split:true" style="width:180px;">
    <div class="easyui-accordion" data-options="fit:true,border:false">
    <div title="用户管理">
     <div class="easyui-menu" data-options="inline:true" style="width: 100%;">
            <div title="用户管理" onclick="javascript: mainpage_showRight(this)" data-options="iconCls:'icon-spfb_4'" viewName="${proPath}/main/goURL/userfile/userList">用户管理</div>
            <div class="menu-sep"></div>
            <div title="自定义界面" onclick="javascript: mainpage_showRight(this)" data-options="iconCls:'icon-spgl_4'" viewName="${proPath}/main/goURL/custom/customUiList">自定义界面</div>
          </div>
          <div class="easyui-menu" data-options="inline:true" style="width: 100%;">
          
            <div  data-options="iconCls:'icon-dmys_1 '"  ><a href="${proPath}/main/goURL/userfile/userList" title="用户管理">用户管理</a></div>
            <div class="menu-sep"></div>
            <div  data-options="iconCls:'icon-zsgl_1'"  ><a href="${proPath}/base/goURL/userfile/customUiList"  title="用户权限">用户权限</a></div>
        </div>
         
        </div>
    </div>
    </div>
    <div data-options="region:'center',title:'center title'" style="padding:5px;background:#eee;">

    <div id="tt1" class="easyui-tabs" data-options="fit:true"
			style="width:500px;height:250px;">
			<div title="系统介绍" style="padding:20px;">这里可以写系统或公司的相关介绍等等 </div>

		</div> 
    </div>   
</body>  
<script type="text/javascript">
function mainpage_showRight(_this){
	var text = $(_this).attr("viewName");
	//alert(text+'---'+_this.title);
	//判断是否存在
	if($('#tt1').tabs("exists",_this.title)){
	//存在则选中
		//alert("存在了");
		$('#tt1').tabs("select",_this.title);			
	}else{
		$('#tt1').tabs('add', {
			title:_this.title,
			//面板有关闭按键
		    closable:true, 
		    //href对远程页面js的支持不好 
			//href: text			
			//可以加载内容填充到选项卡，页面有Js时，也可加载
			content:"<iframe src='"+text+"' title='"+_this.title+"' height='100%' width='100%' frameborder='0px' ></iframe>"
				   
		
		});
		
	}
	return false;
	
}
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
</script>
</html>
