package cn.controller;

import cn.pojo.OneToOneApplication;
import cn.service.OneToOneApplicationService;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes(value={"type","average","whether","content"})
public class OneToOneApplicationController {
	@Autowired
    private OneToOneApplicationService OneToOneApplicationService;
	
	@RequestMapping("houtai/application.do")
	public String zixun(int id,Model model ,OneToOneApplication oneToOneApplication){
		oneToOneApplication.setLawyerid(id);
		oneToOneApplication=OneToOneApplicationService.zixun(oneToOneApplication);
		if(oneToOneApplication!=null){
			model.addAttribute("type", oneToOneApplication.getType());
			model.addAttribute("ave0rage", oneToOneApplication.getAverage());
			model.addAttribute("whether", oneToOneApplication.getWhether());
			model.addAttribute("content", oneToOneApplication.getContent());
			return "houtai/application";
		}
		return null;
		
	}
}