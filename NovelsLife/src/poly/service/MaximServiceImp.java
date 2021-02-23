package poly.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import poly.dao.MaximDao;
import poly.entity.Maxim;

@Service
@Qualifier("MaximService")
public class MaximServiceImp implements MaximService {
	@Autowired
	MaximDao maximdao;

	@Override
	public ArrayList<Maxim> getall() {
		// TODO Auto-generated method stub
		return maximdao.getall();
	}

}
