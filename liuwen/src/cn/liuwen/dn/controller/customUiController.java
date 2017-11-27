package cn.liuwen.dn.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.liuwen.dn.entity.Page;
import cn.liuwen.dn.entity.customUi;
import cn.liuwen.dn.service.CustomUiService;


@Controller
@RequestMapping("custom")
public class customUiController extends BaseAction {
	
	@Resource
	private CustomUiService customUiService;
	
	@RequestMapping(value="/customList")
	@ResponseBody
	public Object checkUser(Page<customUi> page,HttpServletRequest request, HttpServletResponse response){
		System.out.println("开始");
	
			Page p  = customUiService.selectPageUseDyc(page);
			System.out.println("-------"+p);
		
		return p.getPageMap();
	}
	
}
