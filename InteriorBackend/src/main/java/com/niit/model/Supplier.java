package com.niit.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table

public class Supplier
{
	@Id
	@GeneratedValue
    private int SupplierId;
	
	private String SupplierName;
	private String SupplierMobileNo;
	
	public int getSupplierId()
	{
		return SupplierId;
	}
	public void setSupplierId(int supplierId)
	{
		SupplierId = supplierId;
	}
	public String getSupplierName() 
	{
		return SupplierName;
	}
	public void setSupplierName(String supplierName)
	{
		SupplierName = supplierName;
	}
	public String getSupplierMobileNo()
	{
		return SupplierMobileNo;
	}
	public void setSupplierMobileNo(String supplierMobileNo) 
	{
		SupplierMobileNo = supplierMobileNo;
	}
	
}
