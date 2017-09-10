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

import com.zooori.pojo.OperateLog;

/**
 * @ClassName: LoginLogMapper
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author IsProjo
 * @date 2017年1月24日 下午2:50:52
 * 
 */
public interface OperateLogMapper {

	public int add(OperateLog log);

	public int deleteById(String[] ids);

	public List<Map<Object, Object>> listAll(Map<String, String> map);

	public List<Map<Object, Object>> selectByPage(Map<String, String> map);

}
