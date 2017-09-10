/**   
* @Title: DemandSYSservice.java 
* @Package com.zooori.service.impl 
* @Description: TODO(用一句话描述该文件做什么) 
* @author IsProjo
* @date 2016年12月30日 下午1:55:44 
* @version V1.0   
*/
package com.zooori.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zooori.dao.DemandSYSMapper;
import com.zooori.pojo.DemandSYS;
import com.zooori.pojo.QueryParameters;
import com.zooori.service.IDemandSYSService;

/**
 * @ClassName: DemandSYSservice
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author IsProjo
 * @date 2016年12月30日 下午1:55:44
 * 
 */
@Service
public class DemandSYSservice implements IDemandSYSService {

	@Autowired
	private DemandSYSMapper dSysMapper;
	/*
	 * Title: add Description:
	 * 
	 * @param dSys
	 * 
	 * @return
	 * 
	 * @see com.zooori.service.IDemandSYSService#add(com.zooori.pojo.DemandSYS)
	 */

	public int add(DemandSYS dSys) {
		// TODO Auto-generated method stub
		return dSysMapper.add(dSys);
	}

	/*
	 * Title: deleteById Description:
	 * 
	 * @param ids
	 * 
	 * @return
	 * 
	 * @see com.zooori.service.IDemandSYSService#deleteById(java.lang.String[])
	 */

	public int deleteById(String[] ids) {
		// TODO Auto-generated method stub
		return dSysMapper.deleteById(ids);
	}

	/*
	 * Title: updateById Description:
	 * 
	 * @param dSys
	 * 
	 * @return
	 * 
	 * @see com.zooori.service.IDemandSYSService#updateById(com.zooori.pojo.
	 * DemandSYS)
	 */

	public int updateById(DemandSYS dSys) {
		// TODO Auto-generated method stub
		return dSysMapper.updateById(dSys);
	}

	/*
	 * Title: listAll Description:
	 * 
	 * @param qParameter
	 * 
	 * @return
	 * 
	 * @see com.zooori.service.IDemandSYSService#listAll(com.zooori.pojo.
	 * QueryParameters)
	 */

	public List<DemandSYS> listAll(QueryParameters qParameter) {
		// TODO Auto-generated method stub
		return dSysMapper.listAll(qParameter);
	}

	/*
	 * Title: selectByPage Description:
	 * 
	 * @param qParameters
	 * 
	 * @return
	 * 
	 * @see com.zooori.service.IDemandSYSService#selectByPage(com.zooori.pojo.
	 * QueryParameters)
	 */

	public Map<String, String> selectByPage(QueryParameters qParameters) {
		// TODO Auto-generated method stub
		return dSysMapper.selectByPage(qParameters);
	}

}
