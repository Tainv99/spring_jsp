package poly.service;

import java.util.ArrayList;

import poly.entity.Category;

public interface CategoryService {
	public boolean insert(Category ca);
	public boolean delete(Category ca);
	public ArrayList<Category> getall();
	public Category findByID(String id);
	public ArrayList<Category> countcategory();
	public Category update(Category ca);
	public boolean update1(Category ca);
}
