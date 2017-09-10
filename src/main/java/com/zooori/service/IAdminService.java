/**   
* @Title: IAdminService.java 
* @Package com.zooori.service 
* @Description: TODO(用一句话描述该文件做什么) 
* @author IsProjo
* @date 2016年12月5日 下午3:25:08 
* @version V1.0   
*/
package com.zooori.service;

import java.util.List;

import com.zooori.pojo.Admin;
import com.zooori.pojo.IPList;

/**
 * @ClassName: IAdminService
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author IsProjo
 * @date 2016年12月5日 下午3:25:08
 * 
 */
public interface IAdminService {
	List<Admin> getAllAdmin();

	List<IPList> getAllIPList(String ip);

	int addFabulou(IPList ipList);

	int updateFabuloup(int id);

	int updateFabuloud(int id);

	int updateFabulou(IPList ipList);
}
