package com.niit.test;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.dao.ProductDAO;
import com.niit.model.Product;

public class ProductUnitTest
{
	static ProductDAO productDAO;

	@BeforeClass
	public static void executeFirst()
	{
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		System.out.println("DB connected");
		productDAO=(ProductDAO)context.getBean("productDAO");
	}
	
	@Ignore
	@Test
	public void addProductTest()
	{
		Product product=new Product();
		product.setProductName("Men's wear");
		product.setProductDesc("All Men's wear");
		product.setPrice(5000);
		product.setStock(6);
		product.setSupplierId(2);
		product.setCategoryId(3);
		assertTrue("Problem in Product Insertion",productDAO.addProduct(product));
	}
    
	@Ignore
	@Test
	public void getProductTest() 
	{
		Product product=productDAO.getProduct(0);
		System.out.println("ProductId"+product.getProductId());
		System.out.println("ProductName"+product.getProductName());

	}
	
	
	@Test
	public void deleteProductTest()
	{
		Product product=productDAO.getProduct(11);
		assertTrue("Problem in Deletion:",productDAO.deleteProduct(product));
        
	}
	
	@Ignore
	@Test
	public void updateProductTest()
	{
		Product product=productDAO.getProduct(10);
		product.setProductName("A Decor model");
		assertTrue("Problem in updation:",productDAO.updateProduct(product));
        
	}
	@Ignore
	@Test
	public void listProductsTest()
	{
		 List<Product> listproduct=productDAO.listProducts();
		 assertNotNull("no Product",listproduct);
		 
		 for(Product product:listproduct)
		 {
			 System.out.print(product.getProductId()+":::");
			 System.out.print(product.getProductName()+":::");
			 System.out.println(product.getProductDesc());
		 }
		}
	}