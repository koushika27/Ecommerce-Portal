package com.niit.test;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.dao.SupplierDAO;
import com.niit.model.Supplier;


public class SupplierUnitTest 
{
	static SupplierDAO supplierDAO;

	@BeforeClass
	public static void executeFirst()
	{
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		System.out.println("DB connected");
		supplierDAO=(SupplierDAO)context.getBean("supplierDAO");
	}
	
	
	@Test
	public void addSupplierTest()
	{
		Supplier supplier=new Supplier();
		supplier.setSupplierName("koushika");
		supplier.setSupplierMobileNo("7708760322");
		assertTrue("Problem in Category Insertion",supplierDAO.addSupplier(supplier));
	}
    
	@Ignore
	@Test
	public void getSupplierTest() 
	{
		Supplier category=supplierDAO.getSupplier(1);
		System.out.println("SupplierId"+category.getSupplierId());
		System.out.println("SupplierName"+category.getSupplierName());
        assertNotNull("Problem in get Supplier",supplierDAO.getSupplier(1));

	}
	
	@Ignore
	@Test
	public void deleteSupplierTest()
	{
		Supplier supplier=supplierDAO.getSupplier(1);
		assertTrue("Problem in Deletion:",supplierDAO.deleteSupplier(supplier));
        
		}
	@Ignore
	@Test
	public void updateSupplierTest()
	{
		Supplier supplier=supplierDAO.getSupplier(1);
		supplier.setSupplierName("koushika ");
		assertTrue("Problem in updation:",supplierDAO.updateSupplier(supplier));
        
		}
	
	@Test
	public void listSuppliersTest()
	{
		 List<Supplier> listSupplier=supplierDAO.getSuppliers();
		 assertNotNull("no Supplier",listSupplier);
		 
		 for(Supplier supplier:listSupplier)
		 {
			 System.out.println(supplier.getSupplierId()+":::");
			 System.out.println(supplier.getSupplierName()+":::");
			 System.out.println(supplier.getSupplierMobileNo());
		 }
		 

		}
	
	}
