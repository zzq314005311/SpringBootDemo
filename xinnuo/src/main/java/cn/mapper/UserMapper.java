package cn.mapper;

import cn.pojo.User;
import java.util.List;

import javax.validation.constraints.Past;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

@Component
public interface UserMapper {

	User logoin(User user);

	String getname(@Param(value = "email") String email);

	String getpwd(@Param(value = "email") String email);

	void addUser(@Param(value = "name") String name, @Param(value = "pwd") String pwd,
			@Param(value = "phonenum") String phonenum);
}