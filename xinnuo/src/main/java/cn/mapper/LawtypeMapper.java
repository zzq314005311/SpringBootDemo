package cn.mapper;

import cn.pojo.Lawtype;
import cn.pojo.Lawyer;
import cn.pojo.LawyerInfo;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface LawtypeMapper {
	public List<Lawtype> getAll();

	public List<Lawyer> selectLawyer();

	public List<Lawyer> selectAll();

	public List<Lawyer> getLawyerId(int id);

	// 查询
	public List<Lawtype> getLawtypeByPage(@Param("typeName")String typeName,@Param("pageNow")int pageNow,@Param("pageSize")int pageSize);

	// 获取总条数
	public int getTotal(@Param("typeName")String typeName);

	// 添加
	public void addLawtype(Lawtype lawtype);
	
	//通过Id获取Lawtype
	public Lawtype getLawtypeById(@Param("id")int id); 

	// 修改
	public void updateLawtype(Lawtype Lawtype);

	// 删除
	public void deleteLawtype(int id);
	
	//查询父级ID
	public List<Lawtype> firstType();
	
	//查询法律领域信息
	public LawyerInfo lawInfo(@Param("id")int id);

	
	
}