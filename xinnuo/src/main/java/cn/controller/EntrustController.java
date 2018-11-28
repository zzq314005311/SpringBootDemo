package cn.controller;

import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import cn.pojo.Entrust;
import cn.pojo.Reply;
import cn.service.EntrustService;
import cn.service.ReplyService;
import cn.serviceimpl.ReplyServiceImpl;

@Controller
@SessionAttributes(value = { "title", "money", "type", "content", "time", "whether" })
public class EntrustController {
	@Autowired
	private EntrustService entrustService;
	@Autowired
	private ReplyService replyService;

	@RequestMapping("entrust.do")
	public String selAll(Model model) {
		List<Entrust> entrusts = entrustService.select();
		if (entrusts != null) {
			model.addAttribute("entrusts", entrusts);
			return "entrust";
		}
		return "index";
	}

	@RequestMapping("insert.do")
	public String addall(Entrust entrust) {
		if (entrust != null) {
			entrustService.insert(entrust);
			return "redirect:entrust.do";
		}
		return "entrust.do";
	}

	@RequestMapping("detailed.do")
	public String selid(int id, Model model) {
		Entrust entid = entrustService.selectid(id);
		List<Reply> reid = replyService.sele(id);
		model.addAttribute("reid", reid);
		model.addAttribute("entid", entid);
		System.out.println(reid);
		System.out.println(entid);
		return "detailed";
	}

	@RequestMapping("houtai/reply.do")
	public String reply(Entrust entrust, Model model, int id) {
		entrust.setId(id);
		List<Entrust> list = entrustService.reply(entrust);
		if (entrust != null) {
			model.addAttribute("list", list);
			/*model.addAttribute("title", entrust.getTitle());
			model.addAttribute("money", entrust.getMoney());
			model.addAttribute("type", entrust.getType());
			model.addAttribute("content", entrust.getContent());
			model.addAttribute("time", entrust.getTime());
			model.addAttribute("whether", entrust.getWhether());*/
			System.out.println(entrust.getTitle() + entrust.getMoney());
			
			return "houtai/reply";

		}
		return null;
	}

	@RequestMapping("inseid.do")
	public String addid(@RequestParam(value = "id") int id, Reply reply) {
		reply.setEntrust_id(id);
		if (reply != null) {
			entrustService.inseid(reply);
			return "redirect:entrust.do";
		}
		return "";
	}
}
