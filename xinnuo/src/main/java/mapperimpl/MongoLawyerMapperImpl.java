package mapperimpl;

import java.util.List;
import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoOperations;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;
import org.springframework.stereotype.Component;

import com.mongodb.DB;

import cn.pojo.MongoLawyer;
import mongodao.MongoLawyerMapper;

public class MongoLawyerMapperImpl implements MongoLawyerMapper{

	protected MongoTemplate mongoTemplate;  
	
	protected DB db;
	
	 @Autowired  
	 MongoOperations mongoOperations; 

	public List<MongoLawyer> findAll() {
		return getMongoTemplate().find(new Query(), MongoLawyer.class,"lawyer");   

	}
/**修改符合条件的第一条记录*/
	public void findAndModify(String id) {
		Query myQuery=new Query(Criteria.where("id").is(id));
		System.out.println(myQuery.toString());
		getMongoTemplate().updateFirst(myQuery, Update.update("age", 34),"lawyer");
		
//		mongoOperations.updateFirst("personTest",
//				new Query(Criteria.where("id").is(id)), 
//				Update.update("age", 55));
		
	}

	public List<MongoLawyer> findByRegex(String regex) {
		 Pattern pattern = Pattern.compile(regex,Pattern.CASE_INSENSITIVE);   
	      Criteria criteria = new Criteria("name").regex(pattern.toString());   
	        return getMongoTemplate().find(new Query(criteria), MongoLawyer.class,"lawyer");   

	}

	public MongoLawyer findOne(String id) {
		 return getMongoTemplate().findOne(new Query(Criteria.where("id").is(id)), MongoLawyer.class,"lawyer");   

	}

	public void insert(MongoLawyer person) {
		getMongoTemplate().save( person,"lawyer");
	}

	public void removeAll() {
		// TODO Auto-generated method stub
		List<MongoLawyer> list = this.findAll();   
		
        if(list != null){   
            for(MongoLawyer person : list){   
                getMongoTemplate().remove(person);
            }   
        }   

	}

	public void removeOne(String id) {
		Criteria criteria = Criteria.where("id").in(id);   
        if(criteria != null){   
             Query query = new Query(criteria);   
             if(query != null /*&& getMongoTemplate().findOne("personTest",query, Person.class) != null*/){
//             getMongoTemplate().remove("personTest", query);
             getMongoTemplate().remove( query, MongoLawyer.class,"lawyer");
             }
        }   

	}

	public MongoTemplate getMongoTemplate() {
		return mongoTemplate;
	}

	public void setMongoTemplate(MongoTemplate mongoTemplate) {
		this.mongoTemplate = mongoTemplate;
	}
	
}
