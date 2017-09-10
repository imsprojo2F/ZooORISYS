/**   
* @Title: LoginLog.java 
* @Package com.zooori.pojo 
* @Description: TODO(用一句话描述该文件做什么) 
* @author IsProjo
* @date 2017年1月24日 下午2:37:32 
* @version V1.0   
*/
package com.zooori.pojo;

/**
 * @ClassName: LoginLog
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author IsProjo
 * @date 2017年1月24日 下午2:37:32
 * 
 */
public class LoginLog {

	public Integer id;
	public String uid;
	public String ip;
	public String address;
	public Integer type;
	public String create_time;

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUid() {
		return uid;
	}

	public void setUser_id(String uid) {
		this.uid = uid;
	}

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public Integer getType() {
		return type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	public String getCreate_time() {
		return create_time;
	}

	public void setCreate_time(String create_time) {
		this.create_time = create_time;
	}

	@Override
	public String toString() {
		return "LoginLog [id=" + id + ", uid=" + uid + ", ip=" + ip + ", address=" + address + ", type=" + type
				+ ", create_time=" + create_time + "]";
	}

}
