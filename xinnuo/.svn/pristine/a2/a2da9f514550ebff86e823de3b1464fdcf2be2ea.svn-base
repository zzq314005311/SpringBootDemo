package cn.controller;

import java.util.Arrays;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.pojo.Lawyer;
import cn.pojo.MongoLawInstitute;
import cn.pojo.MongoLawyer;
import cn.service.LawtypeService;
import cn.service.LawyerService;
import cn.service.MongoLawInstituteService;
import cn.service.MongoLawyerService;


@Controller
public class MongoLawyerController {
	
	
	private static Log log = LogFactory.getLog(MongoLawyerController.class.getName());
	
	@Autowired
	private  MongoLawyerService mongoLawyerService;
	@Autowired
	private MongoLawInstituteService mongoLawInstituteService;
   @Autowired
	private LawyerService lawyerService;
   
   
   //律师 mongodb
   private MongoLawyer findAll;
   //律师 mysql
   private Lawyer selectLawyer;
   
   private List<String> asList;
   
	@RequestMapping("/mongoLawyer.do")
	public String getLawyerDetail(Model model, int id){
	     //律师 mysql
		 selectLawyer = lawyerService.selectLawyer(id);
		 //律师 mongodb
		  findAll = mongoLawyerService.findOne(String.valueOf(id));
		 //律所 mongodb
			MongoLawInstitute institute = mongoLawInstituteService.findOne(String.valueOf(selectLawyer.getInstitutions()));
			//将擅长法律领域
		 asList = Arrays.asList(findAll.getMajor());
		 
		 
		 model.addAttribute("institute", institute);
		 model.addAttribute("asList", asList);
		model.addAttribute("findAll", findAll);
		model.addAttribute("selectLawyer", selectLawyer);
		
	    return "lawyer-detaill";	
	}
	
	@RequestMapping("/lewyerChat.do")
	public String lewyerChat(Model model){
		 model.addAttribute("asList", asList);
		 model.addAttribute("selectLawyer", selectLawyer);
		model.addAttribute("findAll", findAll);
		return "chatQQ";
	}
}
