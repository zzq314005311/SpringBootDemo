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

import cn.pojo.MongoLawInstitute;
import mongodao.MongoLawInstituteMapper;

public class MongoLawInstituteMapperImpl implements MongoLawInstituteMapper{
	protected MongoTemplate mongoTemplate;  
	protected DB db;
	
	 @Autowired  
	 MongoOperations mongoOperations; 

	public List< MongoLawInstitute> findAll() {
		return getMongoTemplate().find(new Query(),  MongoLawInstitute.class,"lawinstitute");   

	}
/**修改符合条件的第一条记录*/
	public void findAndModify(String id) {
		Query myQuery=new Query(Criteria.where("id").is(id));
		System.out.println(myQuery.toString());
		getMongoTemplate().updateFirst(myQuery, Update.update("age", 34),"lawinstitute");
		
//		mongoOperations.updateFirst("personTest",
//				new Query(Criteria.where("id").is(id)), 
//				Update.update("age", 55));
		
	}

	public List<MongoLawInstitute> findByRegex(String regex) {
		 Pattern pattern = Pattern.compile(regex,Pattern.CASE_INSENSITIVE);   
	      Criteria criteria = new Criteria("name").regex(pattern.toString());   
	        return getMongoTemplate().find(new Query(criteria), MongoLawInstitute.class,"lawinstitute");   

	}

	public MongoLawInstitute findOne(String id) {
		 return getMongoTemplate().findOne(new Query(Criteria.where("id").is(id)), MongoLawInstitute.class,"lawinstitute");   

	}

	public void insert(MongoLawInstitute person) {
		getMongoTemplate().save( person,"lawinstitute");
	}

	public void removeAll() {
		// TODO Auto-generated method stub
		List<MongoLawInstitute> list = this.findAll();   
		
        if(list != null){   
            for(MongoLawInstitute person : list){   
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
             getMongoTemplate().remove( query, MongoLawInstitute.class,"lawinstitute");
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
