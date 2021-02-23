package poly.dao;

import java.util.ArrayList;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import poly.entity.ProductDetail;

@Repository
public class ProductDetailDaoImp implements ProductDetailDao {
	@Autowired
	SessionFactory sessionFactory;

	@Override
	@SuppressWarnings("unchecked")
	public ArrayList<ProductDetail> getall() {
		Session session = sessionFactory.openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			String hql = "FROM ProductDetail";
			Query query = session.createQuery(hql);
			query.setFirstResult(0);
			ArrayList<ProductDetail> list = (ArrayList<ProductDetail>) query.list();
			transaction.commit();
			return list;
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		} finally {
			session.flush();
			session.close();
		}
		return null;
	}

	@Override
	public boolean insert(ProductDetail pddt) {
		Session session=sessionFactory.openSession();
		Transaction trans=null;
		try {
			trans=session.beginTransaction();
			session.save(pddt);
			trans.commit();
			return true;
		} catch (Exception e) {
			if(trans!=null) {
				trans.rollback();
			}
			e.printStackTrace();
		}finally {
			session.flush();
			session.close();
		}
		return false;
	}

	@Override
	public ProductDetail findByID(String id) {
		Session session = sessionFactory.openSession();
		Transaction transaction = null;
		try {
			transaction=session.beginTransaction();
			String hql = "from ProductDetail productdt LEFT JOIN FETCH productdt.product where productdt.id = :id";
			Query query = session.createQuery(hql);

			query.setParameter("id", id);
			
			ProductDetail pddt = (ProductDetail) query.uniqueResult();
			transaction.commit();
			return pddt;
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
	public boolean delete(ProductDetail pddt) {
		Session session = sessionFactory.openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			session.delete(pddt);
			transaction.commit();
			return true;
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		} finally {
			session.flush();
			session.close();
		}
		return false;
	}

	@Override
	public ProductDetail update(ProductDetail pddt) {
		Session session = sessionFactory.openSession();
		Transaction transaction = null;
		try {
			transaction=session.beginTransaction();
			session.merge(pddt);
			transaction.commit();
			return pddt;
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
