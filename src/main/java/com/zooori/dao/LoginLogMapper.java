/**   
* @Title: LoginLogMapper.java 
* @Package com.zooori.dao 
* @Description: TODO(用一句话描述该文件做什么) 
* @author IsProjo
* @date 2017年1月24日 下午2:50:52 
* @version V1.0   
*/
package com.zooori.dao;

import java.util.List;
import java.util.Map;

import com.zooori.pojo.LoginLog;

/**
 * @ClassName: LoginLogMapper
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author IsProjo
 * @date 2017年1月24日 下午2:50:52
 * 
 */
public interface LoginLogMapper {

	public int add(LoginLog log);

	public int deleteById(String[] ids);

	public List<Map<Object, Object>> listAll(Map<String, Object> qParameters);

	public List<Map<Object, Object>> selectByOrder(Map<String, String> map);

	public List<Map<Object, Object>> selectByPage(Map<String, Object> map);

}
