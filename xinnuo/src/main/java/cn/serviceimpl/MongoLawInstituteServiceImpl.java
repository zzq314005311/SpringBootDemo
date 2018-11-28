package cn.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.pojo.MongoLawInstitute;
import cn.service.MongoLawInstituteService;
import mongodao.MongoLawInstituteMapper;
@Service
public class MongoLawInstituteServiceImpl implements MongoLawInstituteService{
	@Autowired
	private MongoLawInstituteMapper  mongoLawInstituteMapper ;

	@Override
	public void insert(MongoLawInstitute lawyer) {
		// TODO Auto-generated method stub
		mongoLawInstituteMapper.insert(lawyer);
	}

	@Override
	public MongoLawInstitute findOne(String id) {
		// TODO Auto-generated method stub
		return mongoLawInstituteMapper.findOne(id);
	}

	@Override
	public List<MongoLawInstitute> findAll() {
		// TODO Auto-generated method stub
		return mongoLawInstituteMapper.findAll();
	}

	@Override
	public List<MongoLawInstitute> findByRegex(String regex) {
		// TODO Auto-generated method stub
		return mongoLawInstituteMapper.findByRegex(regex);
	}

	@Override
	public void removeOne(String name) {
		// TODO Auto-generated method stub
		mongoLawInstituteMapper.removeOne(name);
	}

	@Override
	public void removeAll() {
		// TODO Auto-generated method stub
		mongoLawInstituteMapper.removeAll();
	}

	@Override
	public void findAndModify(String id) {
		// TODO Auto-generated method stub
		mongoLawInstituteMapper.findAndModify(id);
	}

}
