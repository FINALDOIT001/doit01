package com.kh.doit.member.model.vo;

import java.io.Serializable;
import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class Member implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 4689355522768787248L;
	private int mId;
	private String userId;
	private String userPwd;
	private String userName;
	private int userPwdHintSelect;
	private int userPwdHint2;
	private String email;
	private String phone;
	private String address;
	private Date mEnrollDate;
	private Date mUdateDate;
	private int userRoles;
	private String mStatus;
	
	public Member() {
	}

	public Member(int mId, String userId, String userPwd, String userName, int userPwdHintSelect, int userPwdHint2,
			String email, String phone, String address, Date mEnrollDate, Date mUdateDate, int userRoles,
			String mStatus) {
		super();
		this.mId = mId;
		this.userId = userId;
		this.userPwd = userPwd;
		this.userName = userName;
		this.userPwdHintSelect = userPwdHintSelect;
		this.userPwdHint2 = userPwdHint2;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.mEnrollDate = mEnrollDate;
		this.mUdateDate = mUdateDate;
		this.userRoles = userRoles;
		this.mStatus = mStatus;
	}

	public int getmId() {
		return mId;
	}

	public void setmId(int mId) {
		this.mId = mId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public int getUserPwdHintSelect() {
		return userPwdHintSelect;
	}

	public void setUserPwdHintSelect(int userPwdHintSelect) {
		this.userPwdHintSelect = userPwdHintSelect;
	}

	public int getUserPwdHint2() {
		return userPwdHint2;
	}

	public void setUserPwdHint2(int userPwdHint2) {
		this.userPwdHint2 = userPwdHint2;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Date getmEnrollDate() {
		return mEnrollDate;
	}

	public void setmEnrollDate(Date mEnrollDate) {
		this.mEnrollDate = mEnrollDate;
	}

	public Date getmUdateDate() {
		return mUdateDate;
	}

	public void setmUdateDate(Date mUdateDate) {
		this.mUdateDate = mUdateDate;
	}

	public int getUserRoles() {
		return userRoles;
	}

	public void setUserRoles(int userRoles) {
		this.userRoles = userRoles;
	}

	public String getmStatus() {
		return mStatus;
	}

	public void setmStatus(String mStatus) {
		this.mStatus = mStatus;
	}

	@Override
	public String toString() {
		return "Member [mId=" + mId + ", userId=" + userId + ", userPwd=" + userPwd + ", userName=" + userName
				+ ", userPwdHintSelect=" + userPwdHintSelect + ", userPwdHint2=" + userPwdHint2 + ", email=" + email
				+ ", phone=" + phone + ", address=" + address + ", mEnrollDate=" + mEnrollDate + ", mUdateDate="
				+ mUdateDate + ", userRoles=" + userRoles + ", mStatus=" + mStatus + "]";
	}

	
}