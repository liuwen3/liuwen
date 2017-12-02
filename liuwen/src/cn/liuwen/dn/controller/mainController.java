package cn.liuwen.dn.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.liuwen.dn.entity.Page;
import cn.liuwen.dn.entity.Users;
import cn.liuwen.dn.entity.customUi;
import cn.liuwen.dn.service.CustomUiService;
import cn.liuwen.dn.service.MainService;
import cn.liuwen.dn.utils.SessionUtils;

import com.alibaba.fastjson.JSONObject;


@Controller
@RequestMapping("main")
public class mainController {
	
	@Resource
	private MainService mainService;
	
	/*@Autowired
	private CustomUiService customUiService;*/
	/*
	 * 后台登录验证
	 * */
	@RequestMapping(value="/checkUser")
	public String checkUser(Users user,HttpServletRequest request, HttpServletResponse response){
		int f=0;
		try {
			 f = mainService.checkUser(user);
			System.out.println("-------"+f);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(f==1){
			SessionUtils.setSessionAttribute(request, "userName", user.getUserName());
			return "forward:/jsp/main.jsp";
		}else{
			return "false";	
		}
	}
	@RequestMapping("/goURL/{folder}/{file}")
	public String goURL(@PathVariable String folder,@PathVariable String file) {
		System.out.println("goURL.folder|file===" + folder+"/"+file);
		return "forward:/WEB-INF/"+folder+"/"+file+".jsp";
	}
	@RequestMapping("userListcs")
	public void userListcs(Users user,HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		List<Users> list = mainService.searchUserList();
		int cou = mainService.searchUserCount();
		list.get(0).getUserId();
		Map map=new HashMap();
		map.put("total", cou);
		map.put("rows", list);
		String jo = JSONObject.toJSONString(map);
       // response.getWriter().write("{\"total\":2,\"rows\":[{\"userId\":1,\"userName\":\"qqq\",\"userPass\":\"qqq\",\"userAddress\":\"上海\"},{\"userName\":\"111\",\"userPass\":\"111\",\"userAddress\":\"anhui\"}]}"); 
		 response.getWriter().write(jo);
	}
	/*
	 * 跳转前台界面
	 * */
	@RequestMapping(value="/show")
	public String show(HttpServletRequest request, HttpServletResponse response)throws Exception {
		System.out.println(1);
		
			return "forward:/WEB-INF/mainPage/mainPage1.jsp";
		
		
	}
}
