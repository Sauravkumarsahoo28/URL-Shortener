package com.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.entities.Url;

@Repository
public class UrlDao {

	@Autowired
	EntityManagerFactory emf;

	public Url fetchUrlByShortUrl(String shorturl) {
		EntityManager em = emf.createEntityManager();

		Query q = em.createQuery("select u from Url u where u.shorterurl=?1");
		q.setParameter(1, shorturl);
		return (Url) q.getResultList().get(0);
	}
	
	public void updateUrl(Url url) {
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction() ;
		
		et.begin();
		em.merge(url) ;
		et.commit();
	}
	
	public List<Url> fetchallurl()
	{
		EntityManager em = emf.createEntityManager();
		Query q = em.createQuery("select s from Url s");
		return q.getResultList();
	}
}
