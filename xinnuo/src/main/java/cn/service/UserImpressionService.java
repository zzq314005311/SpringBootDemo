package cn.service;

import cn.pojo.UserImpression;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface UserImpressionService {
	void addimpression(UserImpression userImpression);
}