package com.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.entities.User;

@Component
public class UserDao {
	@Autowired
	EntityManagerFactory emf;

	public void saveUser(User u) {
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();

		et.begin();
		em.persist(u);
		et.commit();
	}

	public void updateUser(User u) {
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();

		et.begin();
		em.merge(u);
		et.commit();
	}

	public User loginValidation(String email, String password) {
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();

		Query q = em.createQuery("select u from User u where u.email=?1 and u.Password=?2");
		q.setParameter(1, email);
		q.setParameter(2, password);
		List<User> users = q.getResultList();
		if (users.size() > 0)
			return users.get(0);
		else
			return null;
	}

}
