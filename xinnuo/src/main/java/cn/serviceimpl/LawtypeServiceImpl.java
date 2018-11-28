package cn.serviceimpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.mapper.LawtypeMapper;
import cn.pojo.Lawtype;
import cn.pojo.Lawyer;
import cn.pojo.LawyerInfo;
import cn.service.LawtypeService;

@Service
public class LawtypeServiceImpl implements LawtypeService {
	@Autowired
	private LawtypeMapper lawtypeMapper;

	@Override
	public List<Lawyer> selectAll() {
		// TODO Auto-generated method stub
		return lawtypeMapper.selectAll();
	}

	@Override
	public List<Lawtype> getAll() {
		// TODO Auto-generated method stub
		return lawtypeMapper.getAll();
	}

	@Override
	public List<Lawyer> selectLawyer() {
		// TODO Auto-generated method stub
		return lawtypeMapper.selectLawyer();
	}



	@Override
	public List<Lawyer> getLawyerId(int id) {
		// TODO Auto-generated method stub
		return lawtypeMapper.getLawyerId(id);
	}


	@Override
	public List<Lawtype> getLawtypeByPage(String typeName,int pageNow,int pageSize) {
		// TODO Auto-generated method stub
		return lawtypeMapper.getLawtypeByPage(typeName,pageNow,pageSize);
	}


	@Override
	public int getTotal(String typeName) {
		// TODO Auto-generated method stub
		return lawtypeMapper.getTotal(typeName);
	}


	@Override
	public void addLawtype(Lawtype lawtype) {
		// TODO Auto-generated method stub
		 lawtypeMapper.addLawtype(lawtype);
	}


	@Override
	public void updateLawtype(Lawtype Lawtype) {
		// TODO Auto-generated method stub
		lawtypeMapper.updateLawtype(Lawtype);
	}


	@Override
	public void deleteLawtype(int id) {
		// TODO Auto-generated method stub
		lawtypeMapper.deleteLawtype(id);
	}


	@Override
	public Lawtype getLawtypeById(int id) {
		// TODO Auto-generated method stub
		return lawtypeMapper.getLawtypeById(id);
	}

	@Override
	public List<Lawtype> firstType() {
		// TODO Auto-generated method stub
		return lawtypeMapper.firstType();
	}

	@Override
	public LawyerInfo lawInfo(int id) {
		// TODO Auto-generated method stub
		return lawtypeMapper.lawInfo(id);
	}

}
