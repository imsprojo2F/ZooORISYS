/**   
* @Title: AdminMergeIp.java 
* @Package com.zooori.pojo 
* @Description: TODO(用一句话描述该文件做什么) 
* @author IsProjo
* @date 2016年12月6日 上午10:35:14 
* @version V1.0   
*/
package com.zooori.pojo;

/**
 * @ClassName: AdminMergeIp
 * @Description: TODO(admin&ip表关联查询实体类)
 * @author IsProjo
 * @date 2016年12月6日 上午10:35:14
 * 
 */
public class AdminMergeIp {
	public int adminId;
	public String account;
	public String password;
	public int zanCount;
	public int id;
	public String ip;
	public String dateTime;
	public int isValid;

	public int getAdminId() {
		return adminId;
	}

	public void setAdminId(int adminId) {
		this.adminId = adminId;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getZanCount() {
		return zanCount;
	}

	public void setZanCount(int zanCount) {
		this.zanCount = zanCount;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public String getDateTime() {
		return dateTime;
	}

	public void setDateTime(String dateTime) {
		this.dateTime = dateTime;
	}

	public int getIsValid() {
		return isValid;
	}

	public void setIsValid(int isValid) {
		this.isValid = isValid;
	}

	@Override
	public String toString() {
		return "AdminMergeIp [adminId=" + adminId + ", account=" + account + ", password=" + password + ", zanCount="
				+ zanCount + ", id=" + id + ", ip=" + ip + ", dateTime=" + dateTime + ", isValid=" + isValid + "]";
	}

}
