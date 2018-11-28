package cn.controller;

import cn.pojo.UserImpression;
import cn.serviceimpl.UserImpressionServiceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes(value = { "" })
public class UserImpressionController {

	@Autowired
	private UserImpressionServiceimpl impressionServiceimpl;

	@RequestMapping()
	public String addimpression(int userid, int lawtypeid, int lawyerid, UserImpression userImpression, Model model) {
		userImpression.setId(userid);
		userImpression.setLawtypeId(lawtypeid);
		userImpression.setLawyerId(lawyerid);
		if (userImpression != null) {
			impressionServiceimpl.addimpression(userImpression);
			return "login";
		}
		return null;

	}
}