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

import com.zooori.pojo.SurveySYS;

/**
 * @ClassName: UserMapper
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author IsProjo
 * @date 2016年12月5日 上午11:34:12
 * 
 */
public interface SurveySYSMapper {

	int add(SurveySYS surveySYS);

	int deleteById(String[] ids);

	int updateById(SurveySYS surveySYS);

	List<Map<Object, Object>> listAll(Map<String, String> map);

	List<Map<Object, Object>> selectByPage(Map<String, String> map);
}
