/**   
* @Title: UserService.java 
* @Package com.zooori.service 
* @Description: TODO(用一句话描述该文件做什么) 
* @author IsProjo
* @date 2016年12月5日 上午11:31:04 
* @version V1.0   
*/
package com.zooori.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zooori.dao.UserMapper;
import com.zooori.pojo.QueryParameters;
import com.zooori.pojo.User;
import com.zooori.service.IUserService;

/**
 * @ClassName: UserService
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author IsProjo
 * @date 2016年12月5日 上午11:31:04
 * 
 */
@Service
public class UserService implements IUserService {

	@Autowired
	private UserMapper userMapper;

	/*
	 * Title: add Description:
	 * 
	 * @param user
	 * 
	 * @return
	 * 
	 * @see com.zooori.service.IUserService#add(com.zooori.pojo.User)
	 */

	public int add(User user) {
		// TODO Auto-generated method stub
		return userMapper.add(user);
	}

	/*
	 * Title: deleteById Description:
	 * 
	 * @param ids
	 * 
	 * @return
	 * 
	 * @see com.zooori.service.IUserService#deleteById(java.lang.String[])
	 */

	public int deleteById(String[] ids) {
		// TODO Auto-generated method stub
		return userMapper.deleteById(ids);
	}

	/*
	 * Title: updateById Description:
	 * 
	 * @param user
	 * 
	 * @return
	 * 
	 * @see com.zooori.service.IUserService#updateById(com.zooori.pojo.User)
	 */

	public int updateById(User user) {
		// TODO Auto-generated method stub
		return userMapper.updateById(user);
	}

	/*
	 * Title: selectByAcc Description:
	 * 
	 * @param acc
	 * 
	 * @return
	 * 
	 * @see com.zooori.service.IUserService#selectByAcc(java.lang.String)
	 */

	public User selectByAcc(String acc) {
		// TODO Auto-generated method stub
		return userMapper.selectByAcc(acc);
	}

	/*
	 * Title: listAll Description:
	 * 
	 * @param qParameter
	 * 
	 * @return
	 * 
	 * @see
	 * com.zooori.service.IUserService#listAll(com.zooori.dao.QueryParameters)
	 */

	public List<User> listAll(QueryParameters qParameter) {
		// TODO Auto-generated method stub
		return userMapper.listAll(qParameter);
	}

	/*
	 * Title: selectByPage Description:
	 * 
	 * @param qParameters
	 * 
	 * @return
	 * 
	 * @see com.zooori.service.IUserService#selectByPage(com.zooori.dao.
	 * QueryParameters)
	 */

	public Map<String, String> selectByPage(QueryParameters qParameters) {
		// TODO Auto-generated method stub
		return userMapper.selectByPage(qParameters);
	}

	/*
	 * Title: validateAccount Description:
	 * 
	 * @param acc
	 * 
	 * @param pass
	 * 
	 * @return
	 * 
	 * @see com.zooori.service.IUserService#validateAccount(java.lang.String,
	 * java.lang.String)
	 */

	public User validateAccount(String acc, String pass) {
		// TODO Auto-generated method stub
		return userMapper.validateAccount(acc, pass);
	}

	/*
	 * Title: getAccount Description:
	 * 
	 * @return
	 * 
	 * @see com.zooori.service.IUserService#getAccount()
	 */

	public User getAccount(int id) {
		// TODO Auto-generated method stub
		return userMapper.getAccount(id);
	}

}
