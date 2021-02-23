package poly.dao;

import java.util.ArrayList;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import poly.entity.Product;

@Repository
public class ProductDaoImp implements ProductDao {
	@Autowired
	SessionFactory sessionFactory;

	@Override
	@SuppressWarnings("unchecked")
	public ArrayList<Product> getall() {
		Session session = sessionFactory.openSession();
		Transaction transaction = null;
		try {
			transaction=session.beginTransaction();
			String hql = "FROM Product";
			Query query = session.createQuery(hql);
			ArrayList<Product> list=(ArrayList<Product>) query.list();//ép kiểu không an toàn,upcasting
			transaction.commit();
			return list;
		} catch (Exception e) {
			if(transaction!=null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}finally {
			session.flush();
			session.close();
		}
		
		return null;
	}

	@Override
	public Product findByID(String id) {
		Session session = sessionFactory.openSession();
		Transaction transaction = null;
		try {
			transaction=session.beginTransaction();
			
			String hql = "from Product product LEFT JOIN FETCH product.author LEFT JOIN FETCH product.category where product.id = :id";
			Query query = session.createQuery(hql);

			query.setParameter("id", id);
			
			Product pd = (Product) query.uniqueResult();
			transaction.commit();
			return pd;
		} catch (Exception e) {
			if(transaction!=null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}finally {
			session.flush();
			session.close();
		}
		return null;
	}

	@Override
	public boolean insert(Product pd) {
		Session session = sessionFactory.openSession();
		Transaction transaction = null;
		try {
			transaction=session.beginTransaction();
			session.save(pd);
			transaction.commit();
			return true;
		} catch (Exception e) {
			if(transaction!=null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}finally {
			session.flush();
			session.close();
		}
		return false;
	}
	@Override
	public Product update(Product pd) {
		Session session = sessionFactory.openSession();
		Transaction transaction = null;
		try {
			transaction=session.beginTransaction();
			session.merge(pd);
			transaction.commit();
			return pd;
		} catch (Exception e) {
			if(transaction!=null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}finally {
			session.flush();
			session.close();
		}
		return null;
	}

	@Override
	public boolean delete(Product pd) {
		Session session = sessionFactory.openSession();
		Transaction transaction = null;
		try {
			transaction=session.beginTransaction();
			session.delete(pd);
			transaction.commit();
			return true;
		} catch (Exception e) {
			if(transaction!=null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}
		finally {
			session.flush();
			session.close();
		}
		return false;
	}

	@Override
	@SuppressWarnings("unchecked")
	public ArrayList<Product> countproduct() {
		Session session = sessionFactory.openSession();
		Transaction transaction = null;
		try {
			transaction=session.beginTransaction();
			String hql = "SELECT count(distinct E.name) FROM Product E";
			Query query = session.createQuery(hql);
			ArrayList<Product> list=(ArrayList<Product>) query.list();
			transaction.commit();
			return  list;
		} catch (Exception e) {
			if(transaction!=null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}finally {
			session.flush();
			session.close();
		}
		return null;
	}

	@Override
	@SuppressWarnings("unchecked")
	public ArrayList<Product> sort() {
		Session session = sessionFactory.openSession();
		Transaction transaction = null;
		try {
			transaction=session.beginTransaction();
			String hql = "FROM Product E WHERE E.views > 1 ORDER BY E.views DESC";
			Query query = session.createQuery(hql);
			ArrayList<Product> list=(ArrayList<Product>) query.list();
			transaction.commit();
			return  list;
		} catch (Exception e) {
			if(transaction!=null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}finally {
			session.flush();
			session.close();
		}
		return null;
	}

	
}
