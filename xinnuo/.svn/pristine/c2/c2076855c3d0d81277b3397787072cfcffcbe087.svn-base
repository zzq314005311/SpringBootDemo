package cn.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.mapper.ReplyMapper;
import cn.pojo.Reply;
import cn.service.ReplyService;

@Service
public class ReplyServiceImpl implements ReplyService {
	@Autowired
	private ReplyMapper replyMapper;

	@Override
	public List<Reply> sele(int id) {
		// TODO Auto-generated method stub
		return replyMapper.sele(id);
	}
}
