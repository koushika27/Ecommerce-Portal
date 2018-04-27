package com.niit.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class UserDetail
{
	@Id
	
    private String userName;
	private String passWord;
	private String role;
	private boolean enabled;
	
	private String customerName;
	private String mobileNo;
	private String emailId;
	private String address;
	
	public String getUserName()
	{
		return userName;
	}
	public void setUserName(String userName)
	{
		this.userName = userName;
	}
	public String getPassWord()
	{
		return passWord;
	}
	public void setPassWord(String passWord)
	{
		this.passWord = passWord;
	}
	public String getRole()
	{
		return role;
	}
	public void setRole(String role) 
	{
		this.role = role;
	}
	public boolean isEnabled()
	{
		return enabled;
	}
	public void setEnabled(boolean enabled) 
	{
		this.enabled = enabled;
	}
	public String getCustomerName()
	
	{
		return customerName;
	}
	public void setCustomerName(String customerName)
	{
		this.customerName = customerName;
	}
	public String getMobileNo() {
		return mobileNo;
	}
	public void setMobileNo(String mobileNo)
	{
		this.mobileNo = mobileNo;
	}
	public String getEmailId()
	{
		return emailId;
	}
	public void setEmailId(String emailId)
	{
		this.emailId = emailId;
	}
	public String getAddress()
	{
		return address;
	}
	public void setAddress(String address)
	{
		this.address = address;
	}
}
