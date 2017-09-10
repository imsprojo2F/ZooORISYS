/**   
* @Title: AdminService.java 
* @Package com.zooori.service 
* @Description: TODO(用一句话描述该文件做什么) 
* @author IsProjo
* @date 2016年12月5日 下午3:26:35 
* @version V1.0   
*/
package com.zooori.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.zooori.dao.AdminMapper;
import com.zooori.pojo.Admin;
import com.zooori.pojo.IPList;
import com.zooori.service.IAdminService;

/**
 * @ClassName: AdminService
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author IsProjo
 * @date 2016年12月5日 下午3:26:35
 * 
 */
@Service
public class AdminService implements IAdminService {

	/*
	 * Title: getAllAdmin Description:
	 * 
	 * @return
	 * 
	 * @see com.zooori.service.IAdminService#getAllAdmin()
	 */
	@Resource
	private AdminMapper adminMapper;

	public List<Admin> getAllAdmin() {

		return adminMapper.getAllAdmin();
	}

	/*
	 * Title: getAllIPList Description:
	 * 
	 * @return
	 * 
	 * @see com.zooori.service.IAdminService#getAllIPList()
	 */

	public List<IPList> getAllIPList(String ip) {

		return adminMapper.getAllIPList(ip);
	}

	/*
	 * Title: addFabulou Description:
	 * 
	 * @param ipList
	 * 
	 * @return
	 * 
	 * @see com.zooori.service.IAdminService#addFabulou(com.zooori.pojo.IPList)
	 */

	public int addFabulou(IPList ipList) {
		// TODO Auto-generated method stub
		return adminMapper.addFabulou(ipList);
	}

	/*
	 * Title: updateFabuloup Description:
	 * 
	 * @param id
	 * 
	 * @return
	 * 
	 * @see com.zooori.service.IAdminService#updateFabuloup(int)
	 */

	public int updateFabuloup(int id) {
		// TODO Auto-generated method stub
		return adminMapper.updateAdminFabuloup(id);
	}

	/*
	 * Title: updateFabuloud Description:
	 * 
	 * @param id
	 * 
	 * @return
	 * 
	 * @see com.zooori.service.IAdminService#updateFabuloud(int)
	 */

	public int updateFabuloud(int id) {
		// TODO Auto-generated method stub
		return adminMapper.updateAdminFabuloud(id);
	}

	/*
	 * Title: updateFabulou Description:
	 * 
	 * @param ipList
	 * 
	 * @return
	 * 
	 * @see
	 * com.zooori.service.IAdminService#updateFabulou(com.zooori.pojo.IPList)
	 */

	public int updateFabulou(IPList ipList) {
		// TODO Auto-generated method stub
		return adminMapper.updateAdminFabulou(ipList);
	}

}
