package cn.service;

import cn.pojo.Lawtype;
import cn.pojo.Lawyer;
import cn.pojo.LawyerInfo;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface LawtypeService {
	public List<Lawtype> getAll();


	public List<Lawyer> selectLawyer();

	public List<Lawyer> selectAll();

	public List<Lawyer> getLawyerId(int id);
	
	//查询法律领域信息
	public LawyerInfo lawInfo(@Param("id")int id);

	// 查询
	public List<Lawtype> getLawtypeByPage(String typeName,int pageNow,int pageSize);

	// 获取总条数
	public int getTotal(String typeName);

	// 添加
	public void addLawtype(Lawtype lawtype);
	
	//通过Id获取Lawtype
	public Lawtype getLawtypeById(int id); 

	// 修改
	public void updateLawtype(Lawtype Lawtype);

	// 删除
	public void deleteLawtype(int id);
	
	//查询父级
	public List<Lawtype> firstType();
		
	

}