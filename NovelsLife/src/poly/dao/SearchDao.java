package poly.dao;

import java.util.List;

import poly.entity.Product;

public interface SearchDao {
	public List<Product>  search(String name);
}
