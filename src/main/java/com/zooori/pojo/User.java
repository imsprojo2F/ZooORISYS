/**   
* @Title: User.java 
* @Package com.zooori.pojo 
* @Description: TODO(用一句话描述该文件做什么) 
* @author IsProjo
* @date 2016年12月5日 上午11:27:02 
* @version V1.0   
*/
package com.zooori.pojo;

/**
 * @ClassName: User
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author IsProjo
 * @date 2016年12月5日 上午11:27:02
 * 
 */
public class User {

	public Integer id;
	public String uid;
	public String account;
	public String password;
	public String name;
	public String gender;
	public String birthday;
	public Integer age;
	public String phone;
	public String mail;
	public String address;
	public String avatar;
	public int sign_from;
	public String last_login_time;
	public int login_count;
	public String create_time;
	public String update_time;
	public int type;
	public String city;
	public String Signature;

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getSignature() {
		return Signature;
	}

	public void setSignature(String signature) {
		Signature = signature;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
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

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public int getSign_from() {
		return sign_from;
	}

	public void setSign_from(int sign_from) {
		this.sign_from = sign_from;
	}

	public String getLast_login_time() {
		return last_login_time;
	}

	public void setLast_login_time(String last_login_time) {
		this.last_login_time = last_login_time;
	}

	public int getLogin_count() {
		return login_count;
	}

	public void setLogin_count(int login_count) {
		this.login_count = login_count;
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

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", uid=" + uid + ", account=" + account + ", password=" + password + ", name=" + name
				+ ", gender=" + gender + ", birthday=" + birthday + ", age=" + age + ", phone=" + phone + ", mail="
				+ mail + ", address=" + address + ", avatar=" + avatar + ", sign_from=" + sign_from
				+ ", last_login_time=" + last_login_time + ", login_count=" + login_count + ", create_time="
				+ create_time + ", update_time=" + update_time + ", type=" + type + ", city=" + city + ", Signature="
				+ Signature + "]";
	}

}
