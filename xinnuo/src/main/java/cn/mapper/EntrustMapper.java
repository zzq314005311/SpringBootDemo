package cn.mapper;

import cn.pojo.Entrust;
import cn.pojo.Reply;

import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface EntrustMapper {
	List<Entrust> select();

	List<Entrust> reply(Entrust entrust);

	int insert(Entrust entrust);

	Entrust selectid(int id);

	int inseid(Reply reply);
}