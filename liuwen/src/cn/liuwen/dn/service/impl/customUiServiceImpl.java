package cn.liuwen.dn.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.liuwen.dn.dao.customUiMapper;
import cn.liuwen.dn.entity.Page;
import cn.liuwen.dn.entity.customUi;
import cn.liuwen.dn.service.CustomUiService;


@Service("customUiService")
public class customUiServiceImpl extends BaseServiceImpl<customUi> implements CustomUiService{
	@Autowired
	protected  customUiMapper customUiMapper;
	@Override
	public void addCustom(customUi cus) throws Exception {
		// TODO Auto-generated method stub
		customUiMapper.addCustom(cus);
	}
	/*@Override
	public Page<customUi> selectMainPage() throws Exception {
		// TODO Auto-generated method stub
		return customUiMapper.selectMainPage();
	}*/

}
