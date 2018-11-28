package cn.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.mapper.OneToOneApplicationMapper;
import cn.pojo.OneToOneApplication;
import cn.service.OneToOneApplicationService;

@Service
public class OneToOneApplicationServiceimpl implements OneToOneApplicationService {

	@Autowired
	private OneToOneApplicationMapper oneToOneApplicationMapper;

	@Override
	public OneToOneApplication zixun(OneToOneApplication oneToOneApplication) {
		// TODO Auto-generated method stub
		return oneToOneApplicationMapper.zixun(oneToOneApplication);
	}

}
