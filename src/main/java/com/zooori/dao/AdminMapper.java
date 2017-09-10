/**   
* @Title: AdminMapper.java 
* @Package com.zooori.dao 
* @Description: TODO(用一句话描述该文件做什么) 
* @author IsProjo
* @date 2016年12月5日 下午3:27:38 
* @version V1.0   
*/
package com.zooori.dao;

import java.util.List;

import com.zooori.pojo.Admin;
import com.zooori.pojo.IPList;

/**
 * @ClassName: AdminMapper
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author IsProjo
 * @date 2016年12月5日 下午3:27:38
 * 
 */
public interface AdminMapper {

	public List<Admin> getAllAdmin();

	public List<IPList> getAllIPList(String ip);

	public int addFabulou(IPList ipList);

	public int updateAdminFabuloup(int id);

	public int updateAdminFabuloud(int id);

	public int updateAdminFabulou(IPList ipList);
}
