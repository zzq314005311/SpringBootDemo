package cn.serviceimpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.mapper.AnliMapper;
import cn.pojo.Anli;
import cn.service.AnliService;
@Service
public class AnliServiceImpl implements AnliService{
	@Resource
private AnliMapper anliMapper;
	@Override
	public List<Anli> chaAnli() {
		// TODO Auto-generated method stub
		return anliMapper.chaAnli();
	}
	@Override
	public Anli chaXun(Anli anli) {
		// TODO Auto-generated method stub
		return anliMapper.chakans(anli);
	}

}
