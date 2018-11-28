package cn.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.mapper.EntrustMapper;
import cn.pojo.Entrust;
import cn.pojo.Reply;
import cn.service.EntrustService;

@Service
public class entrustServiceImpl implements EntrustService {
	@Autowired
	private EntrustMapper entrustServiceImpl;

	@Override
	public List<Entrust> select() {
		// TODO Auto-generated method stub
		return entrustServiceImpl.select();
	}

	@Override
	public int insert(Entrust entrust) {
		// TODO Auto-generated method stub
		return entrustServiceImpl.insert(entrust);
	}

	@Override
	public Entrust selectid(int id) {
		// TODO Auto-generated method stub
		return entrustServiceImpl.selectid(id);
	}

	@Override
	public int inseid(Reply reply) {
		// TODO Auto-generated method stub
		return entrustServiceImpl.inseid(reply);
	}

	@Override
	public List<Entrust> reply(Entrust entrust) {
		// TODO Auto-generated method stub
		return entrustServiceImpl.reply(entrust);
	}

	

}
