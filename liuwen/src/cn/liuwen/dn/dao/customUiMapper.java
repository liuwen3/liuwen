package cn.liuwen.dn.dao;

import cn.liuwen.dn.entity.Page;
import cn.liuwen.dn.entity.customUi;




public interface customUiMapper extends BaseMapper<customUi> {

	void addCustom(customUi cus);

	//Page<customUi> selectMainPage();
   
}