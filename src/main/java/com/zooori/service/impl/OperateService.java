/**   
* @Title: OperateService.java 
* @Package com.zooori.service.impl 
* @Description: TODO(用一句话描述该文件做什么) 
* @author IsProjo
* @date 2017年1月24日 下午3:01:53 
* @version V1.0   
*/
package com.zooori.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zooori.dao.OperateLogMapper;
import com.zooori.pojo.OperateLog;
import com.zooori.service.IOperateLogService;

/**
 * @ClassName: OperateService
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author IsProjo
 * @date 2017年1月24日 下午3:01:53
 * 
 */
@Service
public class OperateService implements IOperateLogService {

	@Autowired
	private OperateLogMapper oLogMapper;

	/*
	 * Title: add Description:
	 * 
	 * @param log
	 * 
	 * @return
	 * 
	 * @see
	 * com.zooori.service.IOperateLogService#add(com.zooori.pojo.OperateLog)
	 */

	public int add(OperateLog log) {
		// TODO Auto-generated method stub
		return oLogMapper.add(log);
	}

	/*
	 * Title: deleteById Description:
	 * 
	 * @param ids
	 * 
	 * @return
	 * 
	 * @see com.zooori.service.IOperateLogService#deleteById(java.lang.String[])
	 */

	public int deleteById(String[] ids) {
		// TODO Auto-generated method stub
		return oLogMapper.deleteById(ids);
	}

	/*
	 * Title: listAll Description:
	 * 
	 * @param map
	 * 
	 * @return
	 * 
	 * @see com.zooori.service.IOperateLogService#listAll(java.util.Map)
	 */

	public List<Map<Object, Object>> listAll(Map<String, String> map) {
		// TODO Auto-generated method stub
		return oLogMapper.listAll(map);
	}

	/*
	 * Title: selectByPage Description:
	 * 
	 * @param map
	 * 
	 * @return
	 * 
	 * @see com.zooori.service.IOperateLogService#selectByPage(java.util.Map)
	 */

	public List<Map<Object, Object>> selectByPage(Map<String, String> map) {
		// TODO Auto-generated method stub
		return oLogMapper.selectByPage(map);
	}

}
