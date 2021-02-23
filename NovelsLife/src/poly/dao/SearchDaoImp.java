package poly.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import poly.entity.Product;

@Repository
public class SearchDaoImp implements SearchDao {
	@Autowired
	private SessionFactory sessionFactory;

	@Autowired
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	@Autowired
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<Product> search(String name) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		try {
			
			if(name==null) {
				name="%";
			}else {
				name="%"+name+"%";
			}
			
			String hql="from Product where Name like :name";
			Query query = session.createQuery(hql);
			query.setParameter("name", name);
			List<Product> list=(List<Product>)query.list();
			session.getTransaction().commit();
			session.close();
			return list;
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}

}
