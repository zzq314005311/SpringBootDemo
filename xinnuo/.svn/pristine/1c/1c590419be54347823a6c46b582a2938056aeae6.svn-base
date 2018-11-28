package cn.service;

import java.util.List;

import cn.pojo.MongoLawInstitute;

public interface MongoLawInstituteService {
	/**
	 * 添加对象
	 */
	public void insert(MongoLawInstitute lawyer); 
	
	/**
	 *根据ID查找对象
	 */
    public MongoLawInstitute findOne(String id);   
    /**
     * 查询所有
     */
    public List<MongoLawInstitute> findAll();   
    
    public List<MongoLawInstitute> findByRegex(String regex);
    /**
     * 删除指定的ID对象
     */
    public void removeOne(String name);   
    /**
     * 删除所有
     */
    public void removeAll();   
    /**
     * 通过name找到并修改
     */
    public void findAndModify(String id);
}
