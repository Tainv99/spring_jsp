package poly.dao;

import java.util.ArrayList;


import poly.entity.Product;

public interface ProductDao {
	public ArrayList<Product> getall();
	public Product findByID(String id);
	public boolean insert(Product pd);
	public Product update(Product pd);
	public boolean delete(Product pd);
	public ArrayList<Product> countproduct();
	public ArrayList<Product> sort();
	
}
