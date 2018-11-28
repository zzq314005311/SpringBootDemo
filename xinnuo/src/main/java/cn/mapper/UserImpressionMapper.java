package cn.mapper;

import cn.pojo.UserImpression;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface UserImpressionMapper {

	void addimpression(UserImpression userImpression);
}