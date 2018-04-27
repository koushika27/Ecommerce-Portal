package com.niit.test;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.dao.CategoryDAO;
import com.niit.model.Category;

public class CategoryUnitTest 
{
	static CategoryDAO categoryDAO;

	@BeforeClass
	public static void executeFirst()
	{
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		System.out.println("DB connected");
		categoryDAO=(CategoryDAO)context.getBean("categoryDAO");
	}
	
	@Test
	public void addCategoryTest()
	{
		Category category=new Category();
		category.setCategoryName("Kitchen Decors");
		category.setCategoryDesc("All the Decors Types");
		assertTrue("Problem in Category Insertion",categoryDAO.addCategory(category));
	}
    
	@Ignore
	@Test
	public void getCategoryTest() 
	{
		Category category=categoryDAO.getCategory(1);
		System.out.println("CategoryId"+category.getCategoryId());
		System.out.println("CategoryName"+category.getCategoryName());
        assertNotNull("Problem in get Category",categoryDAO.getCategory(1));

	}
	
	@Ignore
	@Test
	public void deleteCategoryTest()
	{
		Category category=categoryDAO.getCategory(1);
		assertTrue("Problem in Deletion:",categoryDAO.deleteCategory(category));
        
		}
	@Ignore
	@Test
	public void updateCategoryTest()
	{
		Category category=categoryDAO.getCategory(1);
		category.setCategoryName("A Decor model");
		assertTrue("Problem in updation:",categoryDAO.updateCategory(category));
        
		}
	@Ignore
	@Test
	public void listCategoriesTest()
	{
		 List<Category> listCategory=categoryDAO.getCategories();
		 assertNotNull("no Category",listCategory);
		 
		 for(Category category:listCategory)
		 {
			 System.out.println(category.getCategoryId()+":::");
			 System.out.println(category.getCategoryName()+":::");
			 System.out.println(category.getCategoryDesc());
		 }
		}
	}