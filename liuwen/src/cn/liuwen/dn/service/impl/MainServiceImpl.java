package cn.liuwen.dn.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.liuwen.dn.dao.UsersMapper;
import cn.liuwen.dn.entity.Users;
import cn.liuwen.dn.service.MainService;


@Service("mainService")
public class MainServiceImpl  implements MainService{
	
     @Autowired
     private UsersMapper userMapper;
 

	@Override
	public int checkUser(Users user) throws Exception {
		int flag = userMapper.checkUser(user);
		return flag;
		
	}


	@Override
	public List<Users> searchUserList() throws Exception {
		// TODO Auto-generated method stub
		return userMapper.searchUserList();
	}


	@Override
	public int searchUserCount() throws Exception {
		// TODO Auto-generated method stub
		return userMapper.searchUserCount();
	}

}
