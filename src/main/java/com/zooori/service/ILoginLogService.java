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

import com.zooori.pojo.LoginLog;

/**
 * @ClassName: IUserService
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author IsProjo
 * @date 2016年12月5日 上午11:29:06
 * 
 */
public interface ILoginLogService {

	int add(LoginLog log);

	int deleteById(String[] ids);

	List<Map<Object, Object>> listAll(Map<String, Object> map);

	List<Map<Object, Object>> selectByOrder(Map<String, String> map);

	List<Map<Object, Object>> selectByPage(Map<String, Object> map);
}
