package cn.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.mapper.UserImpressionMapper;
import cn.pojo.UserImpression;
import cn.service.UserImpressionService;

@Service
public class UserImpressionServiceimpl implements UserImpressionService {

	@Autowired
	private UserImpressionMapper userImpressionMapper;

	@Override
	public void addimpression(UserImpression userImpression) {
		// TODO Auto-generated method stub
		userImpressionMapper.addimpression(userImpression);
	}

}
