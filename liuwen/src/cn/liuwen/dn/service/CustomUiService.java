package cn.liuwen.dn.service;

import com.sun.xml.rpc.processor.modeler.j2ee.xml.exceptionMappingType;

import cn.liuwen.dn.entity.Page;
import cn.liuwen.dn.entity.customUi;


public interface CustomUiService extends BaseService<customUi> {

	public Page addCustom(customUi cus) throws Exception;;


}
