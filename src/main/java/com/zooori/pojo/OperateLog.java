/**   
* @Title: OperateLog.java 
* @Package com.zooori.pojo 
* @Description: TODO(用一句话描述该文件做什么) 
* @author IsProjo
* @date 2017年1月24日 下午2:39:33 
* @version V1.0   
*/
package com.zooori.pojo;

/**
 * @ClassName: OperateLog
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author IsProjo
 * @date 2017年1月24日 下午2:39:33
 * 
 */
public class OperateLog {

	public Integer id;
	public String uid;
	public Integer operate;
	public String create_time;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public Integer getOperate() {
		return operate;
	}

	public void setOperate(Integer operate) {
		this.operate = operate;
	}

	public String getCreate_time() {
		return create_time;
	}

	public void setCreate_time(String create_time) {
		this.create_time = create_time;
	}

	@Override
	public String toString() {
		return "OperateLog [id=" + id + ", uid=" + uid + ", operate=" + operate + ", create_time=" + create_time + "]";
	}

}
