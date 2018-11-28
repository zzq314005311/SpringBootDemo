package mongodao;

import java.util.List;

import cn.pojo.MongoLawyer;



public interface MongoLawyerMapper {
	/**
	 * 添加对象
	 */
	public void insert( MongoLawyer lawyer); 
	
	/**
	 *根据ID查找对象
	 */
    public MongoLawyer findOne(String id);   
    /**
     * 查询所有
     */
    public List<MongoLawyer> findAll();   
    
    public List<MongoLawyer> findByRegex(String regex);
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
