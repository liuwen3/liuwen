package cn.liuwen.dn.dao;

import java.util.List;

import cn.liuwen.dn.entity.Page;
import cn.liuwen.dn.entity.customUi;




public interface customUiMapper extends BaseMapper<customUi> {

	void addCustom(customUi cus);

	List<customUi> show();

	//Page<customUi> selectMainPage();
   
}