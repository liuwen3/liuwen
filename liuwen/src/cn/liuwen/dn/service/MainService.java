package cn.liuwen.dn.service;

import java.util.List;

import cn.liuwen.dn.entity.Users;
import cn.liuwen.dn.entity.customUi;

public interface MainService  {

	int checkUser(Users user)throws Exception;

	List<Users> searchUserList() throws Exception;

	int searchUserCount()throws Exception;

	List<customUi> show()throws Exception;

	

}
