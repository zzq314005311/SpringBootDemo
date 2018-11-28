package cn.controller;

import cn.pojo.User;
import cn.service.UserService;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller()
@SessionAttributes(value = { "name", "id" })
public class UserController {

	@Autowired
	private UserService userService;

	@RequestMapping("login.do")
	public String logoin(User user, String email, String pwd, Model model) {

		User user2 = userService.logoin(user);

		if (user2 != null && user2.getEmail().equals(email) && user2.getPwd().equals(pwd)) {
			model.addAttribute("email", user2.getEmail());
			model.addAttribute("name", user2.getName());
			model.addAttribute("id", user2.getId());
			return "index";
		}

		return "login";
	}

	@RequestMapping("addUser.do")
	public String addUser(String name, String pwd, String phonenum, String password, Model model) {
		if (password.equals(pwd)) {
			if (name != null && pwd != null && phonenum != null) {
				userService.addUser(name, pwd, phonenum);
				return "login";
			}
		}
		return "register";
	}
}