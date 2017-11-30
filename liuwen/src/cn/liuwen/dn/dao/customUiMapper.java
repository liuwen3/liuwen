package cn.liuwen.dn.dao;

import cn.liuwen.dn.entity.Page;
import cn.liuwen.dn.entity.customUi;




public interface customUiMapper extends BaseMapper<customUi> {

	Page addCustom(customUi cus);
   
}