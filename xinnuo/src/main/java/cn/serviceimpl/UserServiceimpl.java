package cn.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.mapper.UserMapper;
import cn.pojo.User;
import cn.service.UserService;

@Service
public class UserServiceimpl implements UserService {

	@Autowired
	private UserMapper UserMapper;

	@Override
	public void addUser(String name, String pwd, String phonenum) {
		// TODO Auto-generated method stub
		UserMapper.addUser(name, pwd, phonenum);
	}

	@Override
	public User logoin(User user) {
		// TODO Auto-generated method stub
		return UserMapper.logoin(user);
	}

	@Override
	public String getname(String email) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getpwd(String email) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public UserService findSysUserByUserCode(String userCode) {
		// TODO Auto-generated method stub
		return null;
	}

}
