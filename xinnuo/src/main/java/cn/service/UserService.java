package cn.service;

import cn.pojo.User;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface UserService {
	User logoin(User user);

	String getname(String email);

	String getpwd(String email);

	void addUser(String name, String pwd, String phonenum);

	UserService findSysUserByUserCode(String userCode);

	
}