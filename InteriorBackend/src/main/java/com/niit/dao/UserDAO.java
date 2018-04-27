package com.niit.dao;

import java.util.List;

import com.niit.model.UserDetail;

public interface UserDAO
{
	public boolean registerUserDetail(UserDetail user);
	public boolean updateUserDetail(UserDetail user);
	public boolean deleteUserDetail(UserDetail user);
	public UserDetail getUserDetail(int userId);
    public List<UserDetail> listUserDetails();
    
	
	}
