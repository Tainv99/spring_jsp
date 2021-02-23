package poly.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import poly.dao.ProductDetailDao;
import poly.entity.ProductDetail;
@Service
@Qualifier("ProductDetailService")
public class ProductDetailServiceImp implements ProductDetailService{
	@Autowired
	ProductDetailDao productdetaildao;
	
	@Override
	public ArrayList<ProductDetail> getall() {
		// TODO Auto-generated method stub
		return productdetaildao.getall();
	}

	@Override
	public boolean insert(ProductDetail pddt) {
		// TODO Auto-generated method stub
		return productdetaildao.insert(pddt);
	}

	@Override
	public ProductDetail findByID(String id) {
		// TODO Auto-generated method stub
		return productdetaildao.findByID(id);
	}

	@Override
	public boolean delete(ProductDetail pddt) {
		// TODO Auto-generated method stub
		return productdetaildao.delete(pddt);
	}

	@Override
	public ProductDetail update(ProductDetail pddt) {
		// TODO Auto-generated method stub
		return productdetaildao.update(pddt);
	}

}
