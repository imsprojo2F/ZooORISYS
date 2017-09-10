/**   
* @Title: LoginLogService.java 
* @Package com.zooori.service.impl 
* @Description: TODO(用一句话描述该文件做什么) 
* @author IsProjo
* @date 2017年1月24日 下午3:00:14 
* @version V1.0   
*/
package com.zooori.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zooori.dao.LoginLogMapper;
import com.zooori.pojo.LoginLog;
import com.zooori.service.ILoginLogService;

/**
 * @ClassName: LoginLogService
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author IsProjo
 * @date 2017年1月24日 下午3:00:14
 * 
 */
@Service
public class LoginLogService implements ILoginLogService {

	@Autowired
	private LoginLogMapper logMapper;

	/*
	 * Title: add Description:
	 * 
	 * @param log
	 * 
	 * @return
	 * 
	 * @see com.zooori.service.ILoginLogService#add(com.zooori.pojo.LoginLog)
	 */

	public int add(LoginLog log) {
		// TODO Auto-generated method stub
		return logMapper.add(log);
	}

	/*
	 * Title: deleteById Description:
	 * 
	 * @param ids
	 * 
	 * @return
	 * 
	 * @see com.zooori.service.ILoginLogService#deleteById(java.lang.String[])
	 */

	public int deleteById(String[] ids) {
		// TODO Auto-generated method stub
		return logMapper.deleteById(ids);
	}

	/*
	 * Title: listAll Description:
	 * 
	 * @param map
	 * 
	 * @return
	 * 
	 * @see com.zooori.service.ILoginLogService#listAll(java.util.Map)
	 */

	public List<Map<Object, Object>> listAll(Map<String, Object> qParameters) {
		// TODO Auto-generated method stub
		return logMapper.listAll(qParameters);
	}

	/*
	 * Title: selectByPage Description:
	 * 
	 * @param map
	 * 
	 * @return
	 * 
	 * @see com.zooori.service.ILoginLogService#selectByPage(java.util.Map)
	 */

	public List<Map<Object, Object>> selectByPage(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return logMapper.selectByPage(map);
	}

	/*
	 * Title: selectByOrder Description:
	 * 
	 * @param map
	 * 
	 * @return
	 * 
	 * @see com.zooori.service.ILoginLogService#selectByOrder(java.util.Map)
	 */

	public List<Map<Object, Object>> selectByOrder(Map<String, String> map) {
		// TODO Auto-generated method stub
		return logMapper.selectByOrder(map);
	}

}
