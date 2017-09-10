/**   
* @Title: Admin.java 
* @Package com.zooori.pojo 
* @Description: TODO(用一句话描述该文件做什么) 
* @author IsProjo
* @date 2016年12月5日 下午3:22:44 
* @version V1.0   
*/
package com.zooori.pojo;

/**
 * @ClassName: Admin
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author IsProjo
 * @date 2016年12月5日 下午3:22:44
 * 
 */
public class Admin {

	public int id;
	public String account;
	public String password;
	public int zanCount;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	@Override
	public String toString() {
		return "Admin [id=" + id + ", account=" + account + ", password=" + password + ", zanCount=" + zanCount + "]";
	}

}
