package cn.liuwen.dn.dao;

import java.util.List;

import cn.liuwen.dn.entity.Users;

public interface UsersMapper {
	public int checkUser(Users user);

	public List<Users> searchUserList();

	public int searchUserCount();


}
