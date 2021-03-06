package cn.controller;

import cn.pojo.Lawtype;
import cn.pojo.Lawyer;
import cn.service.LawtypeService;
import cn.service.LawyerService;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes(value = { "name", "address", "email", "lawyercard", "phonenum", "head", "time", "service_Address",
		"id", "type", "maj", "min","helpcount" })

public class LawyerController {
	@Autowired
	private LawyerService lawyerService;

	@RequestMapping("houtai/login.do")
	public String htlogin(Lawyer lawyer, String name, String pwd, Model model, HttpSession session) {
		Lawyer lawyer2 = lawyerService.htlogin(lawyer);
		if (lawyer2 != null && lawyer2.getName().equals(name) && lawyer2.getPwd().equals(pwd)) {
			model.addAttribute("name", lawyer.getName());
			model.addAttribute("email", lawyer2.getEmail());
			model.addAttribute("address", lawyer2.getAddress());
			model.addAttribute("lawyercard", lawyer2.getLawyercard());
			model.addAttribute("phonenum", lawyer2.getPhonenum());
			model.addAttribute("head", lawyer2.getHead());
			model.addAttribute("time", lawyer2.getService_Time());
			model.addAttribute("service_Address", lawyer2.getService_Address());
			model.addAttribute("helpcount", lawyer2.getHelpcount());
			model.addAttribute("id", lawyer2.getId());
			System.out.println(lawyer2.getId());
			return "houtai/index";

		}
		return "houtai/login";

	}

	@RequestMapping("houtai/field.do")
	public String field(Integer id, Lawyer lawyer, Model model) {
		lawyer.setId(id);
		lawyer = lawyerService.zhuanye(lawyer);
		if (lawyer != null) {
			model.addAttribute("maj", lawyer.getLawtypeMajormajorid().getTypeName());
			model.addAttribute("min", lawyer.getLawtypeMinormajorid().getTypeName());
			System.out.println(lawyer.getLawtypeMajormajorid().getTypeName());
			System.out.println(lawyer.getLawtypeMinormajorid().getTypeName());
			return "houtai/field";
		}
		return null;

	}


	@RequestMapping("shanchu.do")
	public String update(String time, int id, Model model,Lawyer lawyer ) {
		lawyer.setId(id);
		lawyer.setService_Time(time);
		if (lawyer != null) {
			lawyerService.update1(lawyer);
			return "forward:geren";
		}
		return null;
	}

//	@RequestMapping("update.do")
//	public String update(String time, int id, Model model, Lawyer lawyer) {
//		lawyer.setId(id);
//		lawyer.setService_Time(time);
//		if (lawyer != null) {
//			lawyerService.update(lawyer);
//			return "forward:houtai/geren";
//		}
//		return null;
//	}


}
