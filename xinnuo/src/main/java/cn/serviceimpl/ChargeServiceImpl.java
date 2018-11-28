package cn.serviceimpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.mapper.ChargeMapper;
import cn.pojo.Charge;
@Service
public class ChargeServiceImpl implements ChargeMapper {
	@Resource
private ChargeMapper chargeMapper;
	
	public List<Charge> cha() {
		// TODO Auto-generated method stub
		return chargeMapper.cha();
	}

	@Override
	public Charge chaa(Charge charge) {
		// TODO Auto-generated method stub
		return chargeMapper.chaa(charge);
	}

}
