/**   
* @Title: DemandSYS.java 
* @Package com.zooori.pojo 
* @Description: TODO(用一句话描述该文件做什么) 
* @author IsProjo
* @date 2016年12月30日 下午12:01:06 
* @version V1.0   
*/
package com.zooori.pojo;

/**
 * @ClassName: DemandSYS
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author IsProjo
 * @date 2016年12月30日 下午12:01:06
 * 
 */
public class DemandSYS {

	public Integer id;
	public String name;
	public String phone;
	public String mail;
	public String address;
	public Integer sign_from;
	public String demand;
	public Integer status;
	public String create_time;
	public String update_time;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getDemand() {
		return demand;
	}

	public void setDemand(String demand) {
		this.demand = demand;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public String getCreate_time() {
		return create_time;
	}

	public void setCreate_time(String create_time) {
		this.create_time = create_time;
	}

	public String getUpdate_time() {
		return update_time;
	}

	public void setUpdate_time(String update_time) {
		this.update_time = update_time;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Integer getSign_from() {
		return sign_from;
	}

	public void setSign_from(Integer sign_from) {
		this.sign_from = sign_from;
	}

	@Override
	public String toString() {
		return "DemandSYS [id=" + id + ", name=" + name + ", phone=" + phone + ", mail=" + mail + ", address=" + address
				+ ", sign_from=" + sign_from + ", demand=" + demand + ", status=" + status + ", create_time="
				+ create_time + ", update_time=" + update_time + "]";
	}

}
