package cn.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.pojo.MongoLawyer;
import cn.service.MongoLawyerService;
import mongodao.MongoLawyerMapper;
@Service
public class MongoLawyerServiceImpl implements MongoLawyerService{
    @Autowired
	private MongoLawyerMapper mongoLawyerMapper;
	
	@Override
	public void insert(MongoLawyer lawyer) {
		mongoLawyerMapper.insert(lawyer);
}

	@Override
	public MongoLawyer findOne(String id) {
		// TODO Auto-generated method stub
		return mongoLawyerMapper.findOne(id);
	}

	@Override
	public List<MongoLawyer> findAll() {
		// TODO Auto-generated method stub
		return mongoLawyerMapper.findAll();
	}

	@Override
	public List<MongoLawyer> findByRegex(String regex) {
		// TODO Auto-generated method stub
		return mongoLawyerMapper.findByRegex(regex);
	}

	@Override
	public void removeOne(String name) {
		// TODO Auto-generated method stub
		mongoLawyerMapper.removeOne(name);
	}

	@Override
	public void removeAll() {
		// TODO Auto-generated method stub
		mongoLawyerMapper.removeAll();
	}

	@Override
	public void findAndModify(String id) {
		// TODO Auto-generated method stub
		mongoLawyerMapper.findAndModify(id);
	}

}
