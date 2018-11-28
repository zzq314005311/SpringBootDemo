package cn.service;

import cn.pojo.Entrust;
import cn.pojo.Reply;

import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface EntrustService {
	 List<Entrust> select();
	 int insert(Entrust entrust);
	 Entrust selectid(int id);
	 List<Entrust> reply(Entrust entrust);
	 int inseid(Reply reply);
}