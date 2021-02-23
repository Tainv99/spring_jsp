package poly.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;


import poly.dao.ProductDao;
import poly.entity.Product;

@Service
@Qualifier("ProductService")
public class ProductServiceImp implements ProductService {
	@Autowired
	ProductDao productdao;

	@Override
	public ArrayList<Product> getall() {
		// TODO Auto-generated method stub
		return productdao.getall();
	}

	@Override
	public Product findByID(String id) {
		// TODO Auto-generated method stub
		return productdao.findByID(id);
	}

	@Override
	public boolean insert(Product pd) {
		// TODO Auto-generated method stub
		return productdao.insert(pd);
	}

	@Override
	public Product update(Product pd) {
		return productdao.update(pd);
	}

	@Override
	public boolean delete(Product pd) {
		// TODO Auto-generated method stub
		return productdao.delete(pd);
	}

	@Override
	public ArrayList<Product> countproduct() {
		// TODO Auto-generated method stub
		return productdao.countproduct();
	}

	@Override
	public ArrayList<Product> sort() {
		// TODO Auto-generated method stub
		return productdao.sort();
	}





}
