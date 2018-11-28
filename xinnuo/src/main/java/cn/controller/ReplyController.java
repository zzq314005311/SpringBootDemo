package cn.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.pojo.Reply;
import cn.serviceimpl.ReplyServiceImpl;

@Controller
public class ReplyController {
	@Autowired
	private ReplyServiceImpl impl;
	
	@RequestMapping("reply.do")
	public String addid(@RequestParam(value="id")int id,Model model){
		model.addAttribute("id", id);
		return "reply";
	}
}
