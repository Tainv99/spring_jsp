package poly.dao;

import java.util.ArrayList;

import poly.entity.ProductDetail;

public interface ProductDetailDao {
	public ArrayList<ProductDetail> getall();
	public boolean insert(ProductDetail pddt);
	public ProductDetail findByID(String id);
	public boolean delete(ProductDetail pddt);
	public ProductDetail update(ProductDetail pddt);
}
