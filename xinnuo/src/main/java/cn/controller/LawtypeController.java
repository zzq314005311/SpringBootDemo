package cn.controller;
import java.util.ArrayList;
import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cn.pojo.Lawtype;
import cn.pojo.Lawyer;
import cn.pojo.LawyerInfo;
import cn.pojo.PageBean;
import cn.service.LawtypeService;

@Controller
public class LawtypeController {
	@Autowired
	private LawtypeService lawtypeService;
	
	@RequestMapping("/getLawtypeList.do")
	public String getLawtypeList(Model model) {
		List<Lawtype> lawtypeList=lawtypeService.getAll();
	
		List<Lawyer> selectLawyer=lawtypeService.selectLawyer();
		List<Lawyer> selectAll=lawtypeService.selectAll();
		model.addAttribute("lawtypeList",lawtypeList);
		model.addAttribute("selectLawyer",selectLawyer);
		model.addAttribute("selectAll",selectAll);
		return "index";
	}
	
	@RequestMapping("/getLawyerId.do")
	public String getLawyerId(@RequestParam(value="id")int id,Model model){
		List<Lawyer> getLawyerId=lawtypeService.getLawyerId(id);
		model.addAttribute("getLawyerId",getLawyerId);
		return "liebiao";
		
	}
	
	@RequestMapping("/getLawInfo.do")
	public String getLawInfo(@RequestParam(value="id")int id,Model model){
		LawyerInfo lawyerInfo=lawtypeService.lawInfo(id);
		model.addAttribute("lawyerInfo",lawyerInfo);
		return "lawyerInfo";
		
	}
	
	
	
	/**
	 * 法律领域分页查询
	 */
	@RequestMapping("/wwlist.do")
	public String list(Model model,@RequestParam(required=false)String typeName,String pageNow){
        //获取总页数
         int totalCount=lawtypeService.getTotal(typeName);
        PageBean pageBean=null;
        List<Lawtype> list=new ArrayList<Lawtype>();
        if (pageNow!=null) {
        	pageBean=new PageBean(Integer.parseInt(pageNow), totalCount);
            list=this.lawtypeService.getLawtypeByPage(typeName,pageBean.getStartPos(),pageBean.getPageSize());
        }else {
        	pageBean=new PageBean(1, totalCount);
            list=this.lawtypeService.getLawtypeByPage(typeName,pageBean.getStartPos(),pageBean.getPageSize());
        }
        model.addAttribute("list", list);
        model.addAttribute("pageBean", pageBean);
		model.addAttribute("typeName", typeName);
		return "/houtai/lawyer-list";
	}
	/**
	 * 父级ID
	 */
	@RequestMapping("/wwLawType.do")
	public String lawType(Model model){
		 List<Lawtype> firstType=lawtypeService.firstType();
		 model.addAttribute("firstType", firstType);
		return "/houtai/lawyerType-add";
	}
	
	/**
	 * 法律领域添加
	 * @return
	 */
	@RequestMapping("/wwSave.do")
	public String save(Lawtype lawtype,Model model){
	 lawtypeService.addLawtype(lawtype);
		return "redirect:/wwlist.do";
	}
	
	/**
	 * 根据Id获取LawType
	 */
	@RequestMapping("/getLawtypeById.do")
	public String getLawtypeById(@RequestParam(value="id")int id,Model model){
		Lawtype lawtype=lawtypeService.getLawtypeById(id);
		 List<Lawtype> firstType=lawtypeService.firstType();
		 model.addAttribute("firstType", firstType);
		model.addAttribute("lawtype", lawtype);
	return "/houtai/updateLawType";
		}

	
	/**
	 * 法律领域修改
	 * @return
	 */
	@RequestMapping("/wwUpdate.do")
	public String update(Lawtype lawtype,Model model){
		lawtypeService.updateLawtype(lawtype);
		return "redirect:/wwlist.do";
	}
	
	
	
	/**
	 * 法律领域删除
	 */
	@RequestMapping("/delete_ww.do")
	public String delete(@RequestParam(value="id")int id,Model model){
	lawtypeService.deleteLawtype(id);
	return "redirect:/wwlist.do";
		}

    
}