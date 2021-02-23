package poly.dao;

import java.util.ArrayList;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import poly.entity.Spoil;
@Repository
public class SpoileDaoImp implements SpoileDao{
	@Autowired
	SessionFactory sessionFactory;
	@Override
	public boolean insert(Spoil sp) {
		Session session = sessionFactory.openSession();
		Transaction transaction = null;
		try {
			transaction=session.beginTransaction();
			
			session.save(sp);
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
	@SuppressWarnings("unchecked")
	public ArrayList<Spoil> getall() {
		Session session = sessionFactory.openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			String hql="FROM Spoil";
			Query query = session.createQuery(hql);
			ArrayList<Spoil> list = (ArrayList<Spoil>) query.list();
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

}
