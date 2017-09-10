/**   
* @Title: IPList.java 
* @Package com.zooori.pojo 
* @Description: TODO(用一句话描述该文件做什么) 
* @author IsProjo
* @date 2016年12月6日 上午9:29:27 
* @version V1.0   
*/
package com.zooori.pojo;

import java.util.Date;

/**
 * @ClassName: IPList
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author IsProjo
 * @date 2016年12月6日 上午9:29:27
 * 
 */
public class IPList {

	public int id;
	public int adminId;
	public String ip;
	public Date datetime;
	public int isValid;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getAdminId() {
		return adminId;
	}

	public void setAdminId(int adminId) {
		this.adminId = adminId;
	}

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public Date getDatetime() {
		return datetime;
	}

	public void setDatetime(Date date) {
		this.datetime = date;
	}

	public int getIsValid() {
		return isValid;
	}

	public void setIsValid(int isValid) {
		this.isValid = isValid;
	}

	@Override
	public String toString() {
		return "IPList [id=" + id + ", adminId=" + adminId + ", ip=" + ip + ", datetime=" + datetime + ", isValid="
				+ isValid + "]";
	}

}
