package cn.liuwen.dn.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import cn.liuwen.dn.entity.Page;
import cn.liuwen.dn.entity.customUi;
import cn.liuwen.dn.service.CustomUiService;
import cn.liuwen.dn.utils.SessionUtils;


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
	  @RequestMapping(value = "toaddCustom")
	  public ModelAndView toaddCustom(customUi ui) throws Exception {
	    ModelAndView mav = new ModelAndView();
	    try {
	      mav.addObject("customUi", ui);
	      mav.setViewName("/WEB-INF/custom/addcustomUi.jsp");
	    } catch (Exception e) {
	      mav.setViewName("errorPage");
	    }
	   
	    return mav;
	  }
	
	@RequestMapping(value="/addCustom")
	@ResponseBody
	public Object addCustom(customUi cus,HttpServletRequest request, HttpServletResponse response){
		String mes = "er";
		System.out.println("开始");
	try{
		cus.setCustomK("N");
		cus.setCustomTime(SessionUtils.getSystemTime());
		customUiService.addCustom(cus);
		mes = "su";
	}catch(Exception e){
		e.printStackTrace();
	}
			 
			System.out.println("结束");
		
		return mes;
	}
	
}
