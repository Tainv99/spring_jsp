package poly.dao;

import java.util.ArrayList;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import poly.entity.Category;

@Repository
public class CategoryDaoImp implements CategoryDao {
	@Autowired
	SessionFactory sessionFactory;

	@Override
	@SuppressWarnings("unchecked") // thông báo trình biên dịch không cảnh báo việc sử dụng ép kiểu không an toàn
	public ArrayList<Category> getall() {
		Session session = sessionFactory.openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			String hql = "FROM Category";
			Query query = session.createQuery(hql);
			ArrayList<Category> list = (ArrayList<Category>) query.list();
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
	public boolean delete(Category ca) {
		Session session = sessionFactory.openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			session.delete(ca);
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
	public boolean insert(Category ca) {
		Session session = sessionFactory.openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			session.save(ca);
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
	public Category findByID(String id) {
		Session session = sessionFactory.openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();

			String hql = "from Category category where category.id = :id";
			Query query = session.createQuery(hql);

			query.setParameter("id", id);

			Category ca = (Category) query.uniqueResult();
			transaction.commit();
			return ca;
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
	@SuppressWarnings("unchecked")
	public ArrayList<Category> countcategory() {
		Session session = sessionFactory.openSession();
		Transaction transaction = null;
		try {
			transaction=session.beginTransaction();
			String hql = "SELECT count(distinct E.name) FROM Category E";
			Query query = session.createQuery(hql);
			ArrayList<Category> list=(ArrayList<Category>) query.list();
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
	public Category update(Category ca) {
		Session session = sessionFactory.openSession();
		Transaction transaction = null;
		try {
			transaction=session.beginTransaction();
			session.merge(ca);
			transaction.commit();
			return ca;
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
	public boolean update1(Category ca) {
		Session session = sessionFactory.openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			session.update(ca);;
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
}
