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

import com.zooori.dao.SurveySYSMapper;
import com.zooori.pojo.SurveySYS;
import com.zooori.service.ISurveySYSService;

/**
 * @ClassName: UserService
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author IsProjo
 * @date 2016年12月5日 上午11:31:04
 * 
 */
@Service
public class SurveySYSService implements ISurveySYSService {

	@Autowired
	private SurveySYSMapper surveySYSMapper;

	/*
	 * Title: add Description:
	 * 
	 * @param surveySYS
	 * 
	 * @return
	 * 
	 * @see com.zooori.service.ISurveySYSService#add(com.zooori.pojo.SurveySYS)
	 */

	public int add(SurveySYS surveySYS) {
		// TODO Auto-generated method stub
		return surveySYSMapper.add(surveySYS);
	}

	/*
	 * Title: deleteById Description:
	 * 
	 * @param ids
	 * 
	 * @return
	 * 
	 * @see com.zooori.service.ISurveySYSService#deleteById(java.lang.String[])
	 */

	public int deleteById(String[] ids) {
		// TODO Auto-generated method stub
		return surveySYSMapper.deleteById(ids);
	}

	/*
	 * Title: updateById Description:
	 * 
	 * @param surveySYS
	 * 
	 * @return
	 * 
	 * @see com.zooori.service.ISurveySYSService#updateById(com.zooori.pojo.
	 * SurveySYS)
	 */

	public int updateById(SurveySYS surveySYS) {
		// TODO Auto-generated method stub
		return surveySYSMapper.updateById(surveySYS);
	}

	/*
	 * Title: listAll Description:
	 * 
	 * @param map
	 * 
	 * @return
	 * 
	 * @see com.zooori.service.ISurveySYSService#listAll(java.util.Map)
	 */

	public List<Map<Object, Object>> listAll(Map<String, String> map) {
		// TODO Auto-generated method stub
		return surveySYSMapper.listAll(map);
	}

	/*
	 * Title: selectByPage Description:
	 * 
	 * @param map
	 * 
	 * @return
	 * 
	 * @see com.zooori.service.ISurveySYSService#selectByPage(java.util.Map)
	 */

	public List<Map<Object, Object>> selectByPage(Map<String, String> map) {
		// TODO Auto-generated method stub
		return surveySYSMapper.selectByPage(map);
	}

}
