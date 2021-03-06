/**   
* @Title: UserMapper.java 
* @Package com.zooori.service 
* @Description: TODO(用一句话描述该文件做什么) 
* @author IsProjo
* @date 2016年12月5日 上午11:34:12 
* @version V1.0   
*/
package com.zooori.dao;

import java.util.List;
import java.util.Map;

import com.zooori.pojo.QueryParameters;
import com.zooori.pojo.User;

/**
 * @ClassName: UserMapper
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author IsProjo
 * @date 2016年12月5日 上午11:34:12
 * 
 */
public interface UserMapper {

	int add(User user);

	int deleteById(String[] ids);

	int updateById(User user);

	User selectByAcc(String acc);

	User getAccount(int id);

	User validateAccount(String acc, String pass);

	List<User> listAll(QueryParameters qParameter);

	Map<String, String> selectByPage(QueryParameters qParameters);
}
