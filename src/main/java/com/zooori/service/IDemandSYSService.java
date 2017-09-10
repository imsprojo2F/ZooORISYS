/**   
* @Title: IUserService.java 
* @Package com.zooori.service 
* @Description: TODO(用一句话描述该文件做什么) 
* @author IsProjo
* @date 2016年12月5日 上午11:29:06 
* @version V1.0   
*/
package com.zooori.service;

import java.util.List;
import java.util.Map;

import com.zooori.pojo.DemandSYS;
import com.zooori.pojo.QueryParameters;

/**
 * @ClassName: IUserService
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author IsProjo
 * @date 2016年12月5日 上午11:29:06
 * 
 */
public interface IDemandSYSService {

	int add(DemandSYS dSys);

	int deleteById(String[] ids);

	int updateById(DemandSYS dSys);

	List<DemandSYS> listAll(QueryParameters qParameter);

	Map<String, String> selectByPage(QueryParameters qParameters);
}
